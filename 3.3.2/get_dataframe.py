import re
import os
import pandas
import matplotlib.pyplot as plt 

#从对应算法输出的文件中读取结果，使用正则表达式匹配
def get_result(file):
    with open(file,"r",encoding="utf-8") as f:
        result=f.read()

    thread_list=re.findall(r"Generating (\d*) threads",result) #返回的都是数字列表，yhrun执行几次，得到的列表就有几项。下同
    filenum_list=re.findall(r"access (\d*) files",result)
    request_list=re.findall(r"issue (\d*) requests",result)
    seq_list=re.findall(r"with (\d*) percent",result)
    id_list=re.findall(r"by (\d*) different",result)
    bytes_list=re.findall(r" (\d*) bytes every",result)
    inter_list=re.findall(r"every up to (\d*)ns",result)
    process_list=re.findall(r"up to (\d*)ns to",result)
    seed_list=re.findall(r"seed is (\d*)",result)

    took_list=re.findall(r"took (\d*)ns",result)
    schedule_list=re.findall(r"schedule (\d*) requests",result)
    thoughput_list=re.findall(r"was of (\d*)",result)

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

    algo=str(file).split(".")[0] #从算法文件名中提取算法名
    algo_tuple=[1 for i in range(len(thread_list))] #1作为标记，表明该算法被使用了

    #构建dataframe对象，将前面提取的列表当作行，默认是当作列，所以要转置
    df=pandas.DataFrame([thread_list,filenum_list,request_list,\
        seq_list,id_list,bytes_list,inter_list,process_list,\
        seed_list,took_list,schedule_list,thoughput_list,algo_tuple],
        index=["threads","files"," per_requests","sequential_percent",\
        "identifiers","requests_bytes","inter_time","process_time",\
        "seed","generate_time","all_requests","thoughput",f"{algo}"] #添加一行算法标记，内容为1
        ).T

    #print(df)
    return df


#循环读取算法输出的文件，注意其他文件名不能含有result字符
def get_file():
    full_df=pandas.DataFrame()

    os.chdir("F:\\01_个人资料\\LatexThesis4SYSU\\hmm0602\\result\\3.3.2")
    file_list=os.listdir()
    for file in file_list:
        if "result" in file:
            df=get_result(file)
            full_df=pandas.concat([full_df,df],axis=0,join='outer') #将各个算法返回的dataframe拼接起来，类似于list的append方法
            print(file,df.shape,full_df.shape)
            print("###")
    
    #每个算法的index都是从0开始的，拼接的dataframe的index索引是重复的，需要自己再重新从0编号
    new_index=[i for i in range(len(full_df.index))]
    full_df["new_index"]=new_index #添加一列。不能直接用reindex方法，所以分成两步，先添加成列，再设置成index
    full_df=full_df.set_index("new_index",drop=False) #将添加的列作为index，默认会被drop，需要保留，后面还要用。必须赋值回去，否则index索引只是临时的
    full_df.to_csv("res.csv")

    return full_df
    

#处理简化版的dataframe，选择最差和最好的算法
def process_df(df):
    mean_list=[] 
    for i in [x*10 for x in range(35)]: #每个算法对应50行数据，一共7个算法。每个请求大小的参数对应10次实验，一共5个参数
        mean_list.append(df.loc[i:i+10,"thoughput"].astype(int).mean()) #获取throughout列并计算平均值，注意dtype是object，需要先转换成int类型
    
    print(mean_list)

    #每一种算法在不同连续性时的平均时间。0，25，50，75，100共5组
    aioli=mean_list[0:5]
    mlf=mean_list[5:10]
    noop=mean_list[10:15]
    sjf=mean_list[15:20]
    to=mean_list[20:25]
    toagg=mean_list[25:30]
    twins=mean_list[30:35]

    #用字典重新构建一个dataframe，用于画图
    final_df=pandas.DataFrame({"noop":noop,"aioli":aioli,"mlf":mlf,"sjf":sjf,"to":to,"toagg":toagg,"twins":twins})
    final_df.index=["0%","25%","50%","75%","100%"] #此时没有index，所以可以直接用index赋值的方式添加
    print(final_df)
    final_df.to_csv("final.csv")

    fig,ax=plt.subplots(1,2,figsize=(20, 8)) #绘制一个柱状图和一个折线图，指定大小为20*8英寸，1英寸=2.54厘米
    yticks_lim=[i*3000 for i in range(11)]
    final_df.plot(ax=ax[0],kind="bar",yticks=yticks_lim)
    final_df.plot(ax=ax[1],yticks=yticks_lim)
    plt.savefig("332.pdf")


if __name__=="__main__":
    full_df=get_file()#从对应算法输出的文件中匹配出结果，用dataframe方式输出
    new_df=full_df.loc[:,["new_index","thoughput","aioli","mlf","sjf","to","toagg","twins","noop"]] #简化版的dataframe
    process_df(new_df)#处理简化版的dataframe，选择最差和最好的算法