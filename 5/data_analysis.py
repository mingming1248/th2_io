import re
import os
import pandas
import matplotlib
import matplotlib.pyplot as plt 

#从对应算法输出的文件中读取结果，使用正则表达式匹配
def get_result(file):
    with open(file,"r",encoding="utf-8") as f:
        result=f.read()

    #只有一项
    task=re.findall(r"tasks               : (\d*)",result)[0]
    node=re.findall(r"clients per node    : (\d*)",result)[0] 
    repetition=re.findall(r"repetitions         : (\d*)",result)[0]
    xfersize=re.findall(r"xfersize            : (\d*.?\d* \w*)\n",result)[0]
    block_size=re.findall(r"blocksize           : (\d*.?\d* \w*)\n",result)[0]
    aggregate_size=re.findall(r"aggregate filesize  : (\d*.?\d* \w*)\n",result)[0]
    agios_requests=re.findall(r"with (\d*) requests.",result)[0]
    
    #数量和repetition相同，且所有元素相同。总和是agios_requests的一半
    requests_list=re.findall(r"sended (\d*) requests",result)

    #全都是字符串类型
    print(task)
    print(node)
    print(repetition)
    print(xfersize)
    print(block_size)
    print(aggregate_size)
    print(agios_requests)
    print(requests_list)


    #要匹配的字符串长这样：Receive Time(s): 3.792700，但是有颜色。前有是ascii码

    #尝试1，有颜色，格式如\x1b[0m，不能匹配
    #time_list=re.findall(r"Receive Time(s): (\d*)",result)

    #尝试2，太麻烦
    # time_list=re.findall(r"(\d+\.{1}\d{6})",result)
    # 注意里面有0.xxxxxx的字符，全部匹配再去除太麻烦，可以换个思路

    #尝试3，先去除表示颜色的字符，再匹配就没问题了
    # result=re.sub("\\x1b\[32m","",result) #颜色开始
    # result=re.sub("\\x1b\[0m","",result) #颜色结束
    # time_list=re.findall(r"Receive Time(s): (\d*.\d*)",result) #还有问题

    #尝试4，前面的问题不是颜色造成的，是Time(s)中的(s)造成的！不用处理颜色！浪费了几个小时
    time_list=re.findall(r"Receive Time\(s\): (\d*.\d*)",result)

    sum=0
    for i in time_list:
        sum+=float(i) #浮点数，不是int

    time_average=sum/int(repetition)

    print(time_list)
    print(time_average)

    divide=aggregate_size.split(" ")
    unit=divide[1] #单位，GB、MB
    volume=float(divide[0])

    if "GiB"==unit:
        volume *= 1024

    speed=volume/time_average

    file_name_list=str(file).split("_") #从文件名中提取信息
    algo=file_name_list[0]
    thread=file_name_list[1]
    block=file_name_list[2]
    xfer=file_name_list[3].split(".")[0] #不含result
    
    print(speed)
    print(thread)
    print(block)
    print(xfer)
   
    #构建dataframe对象，将前面提取的列表当作行，默认是当作列，所以要转置
    result_df=pandas.DataFrame([task,node,repetition,xfersize,block_size,aggregate_size,\
        agios_requests,requests_list[0],time_average,thread,block,xfer,speed,algo],
        index=["task","node","repetition","xfersize","block_size","aggregate_size","agios_requests","requests_per_repetition","time_average","thread","block(MB)","xfer(KB)","speed","algo"] 
        ).T

    return result_df


#循环读取算法输出的文件，注意其他文件名不能含有result字符
def get_file():
    full_df=pandas.DataFrame()

    os.chdir("F:\\01_个人资料\\LatexThesis4SYSU\\hmm0619")
    file_list=os.listdir()
    for file in file_list:
        if "result" in file:
            result_df=get_result(file)
            full_df=pandas.concat([full_df,result_df],axis=0,join='outer') #添加到dataframe后面，类似于list的append方法
            print("###")
    
    print(full_df)
    # result_df都是从0开始的，拼接的dataframe的index索引是重复的，需要自己再重新从0编号
    new_index=[i for i in range(len(full_df.index))]
    full_df["new_index"]=new_index #添加一列。不能直接用reindex方法，所以分成两步，先添加成列，再设置成index
    full_df=full_df.set_index("new_index") #将添加的列作为index
    full_df.to_csv("res.csv")

    return full_df

def date_analysis(med_df):

    mlf_speed_list=list(med_df["speed"][0:5].astype(float)) #对应的xfer分别是1024、2048、256、4096、512，顺序不是递增的
    noop_speed_list=list(med_df["speed"][5:10].astype(float))
    sjf_speed_list=list(med_df["speed"][10:15].astype(float))
    to_speed_list=list(med_df["speed"][15:20].astype(float))
    twins_speed_list=list(med_df["speed"][20:].astype(float))

    for i in (mlf_speed_list,noop_speed_list,sjf_speed_list,to_speed_list,twins_speed_list):#调整顺序
        print(i)

        temp1=i[2]
        temp2=i[-1]
        i.pop(2)
        i.pop(-1)
        print(i)

        i.insert(0,temp2)
        i.insert(0,temp1)
        print(i)

    final_df=pandas.DataFrame([noop_speed_list,mlf_speed_list,sjf_speed_list,to_speed_list,twins_speed_list]\
        ,index=["NOOP","MLF","SJF","TO","TWINS"],columns=["256KB","512KB","1MB","2MB","4MB"]).T
    
    print(final_df)
    final_df.to_csv("final.csv")
    
    
    matplotlib.rcParams.update({'font.size': 18})
    fig,ax=plt.subplots(1,5,figsize=(23, 10)) #绘制5个柱状图，指定大小为23*10英寸，1英寸=2.54厘米


    x=["NOOP","MLF","SJF","TO","TWINS"]

    for i in range(final_df.shape[0]):
        y=final_df.iloc[i:i+1].values.tolist()[0] #将第i行转化成列表
        ax[i].bar(x,y)
        ax[i].set_title(f"({'abcde'[i]})")
        ax[i].set_xticklabels(x,rotation=90)
    
    plt.savefig("57.pdf")

    figure2=plt.figure() #看算法随着xfer大小变化的趋势，很明显，直接上升
    x=["256KB","512KB","1MB","2MB","4MB"]
    plt.plot(x,sjf_speed_list)
    plt.ylim((0,500))
    plt.savefig("58.pdf")


if __name__=="__main__":
    full_df=get_file()
    med_df=full_df[["xfer(KB)","speed","algo"]]
    date_analysis(med_df)