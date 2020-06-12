import re
import os
import pandas


#从对应算法输出的文件中读取结果，使用正则表达式匹配
def get_result(file):
    with open(file, "r", encoding="utf-8") as f:
        result = f.read()

    # 返回的都是数字列表，yhrun执行几次，得到的列表就有几项。下同
    thread_list = re.findall(r"Generating (\d*) threads", result)
    filenum_list = re.findall(r"access (\d*) files", result)
    request_list = re.findall(r"issue (\d*) requests", result)
    seq_list = re.findall(r"with (\d*) percent", result)
    id_list = re.findall(r"by (\d*) different", result)
    bytes_list = re.findall(r" (\d*) bytes every", result)
    inter_list = re.findall(r"every up to (\d*)ns", result)
    process_list = re.findall(r"up to (\d*)ns to", result)
    seed_list = re.findall(r"seed is (\d*)", result)

    took_list = re.findall(r"took (\d*)ns", result)
    schedule_list = re.findall(r"schedule (\d*) requests", result)
    thoughput_list = re.findall(r"was of (\d*)", result)

    # print(thread_list)
    # print(filenum_list)
    # print(request_list)
    # print(seq_list)
    # print(id_list)
    # print(bytes_list)
    # print(inter_list)
    # print(process_list)
    # print(seed_list)

    # print(took_list)
    # print(schedule_list)
    # print(thoughput_list)

    print(file,len(thread_list))  # 每个算法文件应该有6250条数据数据
    algo = str(file).split(".")[0]  # 从算法文件名中提取算法名
    algo_tuple = [1 for i in range(len(thread_list))]  # 1作为标记，表明该算法被使用了

    #构建dataframe对象，将前面提取的列表当作行，默认是当作列，所以要转置
    df = pandas.DataFrame([thread_list, filenum_list, request_list,
                           seq_list, id_list, bytes_list, inter_list, process_list,
                           seed_list, took_list, schedule_list, thoughput_list, algo_tuple],
                          index=["threads", "files", " per_requests", "sequential_percent",
                                 "identifiers", "requests_bytes", "inter_time", "process_time",
                                 "seed", "generate_time", "all_requests", "thoughput", f"{algo}"]  # 添加一行算法标记，内容为1
                          ).T

    #print(df)
    return df


#循环读取算法输出的文件，注意其他文件名不能含有result字符
def get_file():
    full_df = pandas.DataFrame()

    os.chdir("F:\\01_个人资料\\LatexThesis4SYSU\\hmm0602\\result\\4")
    file_list = os.listdir()
    for file in file_list:
        if "result" in file:
            df = get_result(file)
            # 将各个算法返回的dataframe拼接起来，类似于list的append方法
            full_df = pandas.concat([full_df, df], axis=0, join='outer')

    #每个算法的index都是从0开始的，拼接的dataframe的index索引是重复的，需要自己再重新从0编号
    new_index = [i for i in range(len(full_df.index))]
    # 添加一列。不能直接用reindex方法，所以分成两步，先添加成列，再设置成index
    full_df["new_index"] = new_index
    # 将添加的列作为index，默认会被drop，需要保留，后面还要用。必须赋值回去，否则index索引只是临时的
    full_df = full_df.set_index("new_index", drop=False)
    full_df.to_csv("res.csv")  # 7个文件，每个31250行，共218750行

    return full_df


#处理简化版的dataframe，选择最差和最好的算法
def process_df(df):
    mean_list = []
    for i in [x*10 for x in range(21875)]:  # 21875组数据，每十个是一组，用于计算平均值
        # 获取throughout列并计算平均值，注意dtype是object，需要先转换成int类型
        mean_list.append(df.loc[i:i+10, "thoughput"].astype(int).mean())

    print(len(mean_list))  # 21875个元素

    #每一种算法有3125条数据
    aioli = mean_list[0:3125]
    mlf = mean_list[3125:3125*2]
    noop=mean_list[3125*2:3125*3]
    sjf = mean_list[3125*3:3125*4]
    to = mean_list[3125*4:3125*5]
    toagg = mean_list[3125*5:3125*6]
    twins = mean_list[3125*6:]

    #用字典重新构建一个dataframe，用于选择最好和最差的算法
    final_df = pandas.DataFrame(
        {"noop":noop,"aioli": aioli, "mlf": mlf, "sjf": sjf, "to": to, "toagg": toagg,"twins":twins})
    print(final_df)
    #print(final_df.max(axis=1),final_df.idxmax(axis=1))
    # 不能直接添加一列，因为原来都是数字型的，可以比较大小，添加一列字符串就不能比较了，所以先暂存比较的结果
    idxmax_temp = final_df.idxmax(axis=1)
    #idxmin_temp=final_df.idxmin(axis=1)
    final_df["idxmax"] = idxmax_temp
    #final_df["idxmin"]=idxmin_temp

    print(final_df.shape)  # 3125行，8列，最后一列是最好的算法
    final_df.to_csv("final.csv")
    return idxmax_temp  # 返回最好算法的一列，这是分类树的target，类型是series


def get_data():  # 分类树的属性，和产生yhbatch的过程完全一样，5个属性，顺序也要一致

    files=[10,20,50,70,100]
    base_list=[64,256,1024,4096,4096*4]
    per_requests=[10,20,40,80,160]
    sequential_percents=[0,25,50,75,100]
    requests_bytes=[1024*i for i in base_list]
    inter_times=[100,1000,10000,100000,1000000]
    
    #5^5=3125个样本
    sample_list=[]
    for file in files:
        for per_request in per_requests:
            for sequential_percent in sequential_percents:
                for requests_byte in requests_bytes:
                    for inter_time in inter_times:
                        sample = [file,per_request,sequential_percent,requests_byte,inter_time] #一个样本的5个属性
                        sample_list.append(sample)
    
    data_df=pandas.DataFrame(sample_list,columns=["file","per_request","sequential","requests_byte","inter_time"])
    print(data_df)
    return data_df


if __name__ == "__main__":
    full_df = get_file()  # 从对应算法输出的文件中匹配出结果，用dataframe方式输出
    new_df = full_df.loc[:, ["new_index", "thoughput",
                             "aioli", "mlf", "sjf", "to", "toagg","twins","noop"]]  # 简化版的dataframe
    target = process_df(new_df)  # 处理简化版的dataframe，选择最好的算法，得到一个series
    data=get_data()
    pandas.concat((data,target),axis=1, join='outer').to_csv("learn_data.csv")



#有7个算法algos
#每个算法有5个循环，分别是files、per_requests、sequential_percents、requests_bytes、inter_times
#每个循环有5个变量
#最后的命令行有7*5^5=21875条

#每条命令行产生10次测试
#最终有218750条测试
#分配到7个算法文件中，每个文件有31250条数据
#需要对31250条数据进行解析，每10个取平均值，还有3125行数据
