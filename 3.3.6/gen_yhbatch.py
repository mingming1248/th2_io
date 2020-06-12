#生成yhbatch脚本，注意必须在linux中执行，否则得到的文件结尾是\r\n，即使指定\n也不行

base_dir="/GPUFS/sysu_hshen_2/hmm0602"

algos=["sjf","aioli","mlf","to","toagg","noop"]

threads=[100]
files=[50]
per_requests=[40]
identifiers=[4,4,4,4,4] #只是为了保证有5个数据，也可以把threads、files重复5次
sequential_percents=[50]
requests_bytes=[1024*1024]
inter_times=[10000]
process_times=[10000]
seed=1

command_list=[]

for algo in algos:
    for thread in threads:
        for file in files:
            for per_request in per_requests:
                for identifier in identifiers:
                    for sequential_percent in sequential_percents:
                        for requests_byte in requests_bytes:
                            for inter_time in inter_times:
                                for process_time in process_times:
                                    str=f"yhrun -n 10 {base_dir}/{algo}.out {thread} {file} {per_request} {identifier} {sequential_percent} {requests_byte} {inter_time} {process_time} {seed} >>{base_dir}/result/4.3.6/{algo}.result\n"
                                    command_list.append(str)
                                    # print(str)
                                    # print("yhrun -n 100 ./sjf 10 2 3 4 50 1024 1000 1000 1 >>/GPUFS/sysu_hshen_2/hmm0519/result/sjf.result")

# twins_windows=[1,5,25,125,625] #接下来的部分调整的是twins算法的时间窗口大小，但是不是通过argv传入，而是用配置文件设置
twins_conf=[1,2,3,4,5]
for i in twins_conf:
    str=f"yhrun -n 10 {base_dir}/twins{i}.out 100 50 100 4 50 1048576 10000 10000 1 >>{base_dir}/result/4.3.6/twins.result\n"
    command_list.append(str)

with open("job.sh","w",encoding="utf-8") as f:
    f.write("#! /bin/bash\n#SBATCH -J 5\n#SBATCH -p work\necho 5 begin\n")
    for command in command_list:
        f.write(command)
