#生成yhbatch脚本，注意必须在linux中执行，否则得到的文件结尾是\r\n，即使指定\n也不行

base_dir="/GPUFS/sysu_hshen_2/hmm0602"

algos=["sjf","aioli","mlf","to","toagg","twins","noop"]
base_list=[64,256,1024,4096,4096*4]

threads=[100]
files=[50]
per_requests=[40]
identifiers=[4]
sequential_percents=[50]
requests_bytes=[1024*i for i in base_list]
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
                                    str=f"yhrun -n 10 {base_dir}/{algo}.out {thread} {file} {per_request} {identifier} {sequential_percent} {requests_byte} {inter_time} {process_time} {seed} >>{base_dir}/result/4.3.1/{algo}.result\n"
                                    command_list.append(str)
                                    # print(str)
                                    # print("yhrun -n 100 ./sjf 10 2 3 4 50 1024 1000 1000 1 >>/GPUFS/sysu_hshen_2/hmm0519/result/sjf.result")

with open("job.sh","w",encoding="utf-8") as f:
    f.write("#! /bin/bash\n#SBATCH -J 431\n#SBATCH -p work\necho 4.3.1 begin\n")
    for command in command_list:
        f.write(command)