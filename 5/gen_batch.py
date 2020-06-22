#生成yhbatch脚本，注意必须在linux中执行，否则得到的文件结尾是\r\n，即使指定\n也不行

base_dir="/GPUFS/sysu_hshen_2/hmm0619"
agios_path="/GPUFS/sysu_hshen_2/agios/agios-master/"

algos=["sjf","mlf","to","twins","noop"]
threads=[10] #10个进程并行访问
blocks=[1024] #单个进程处理的文件大小,单位MB，磁盘的上文件大小是block，读写的数据量是blokc*thread
xfers=[256,512,1024,2048,4096] #ior传输大小，单位KB

for algo in algos:
    with open(f"{algo}.sh","w",encoding="utf-8") as f:
        f.write("#! /bin/bash\n#SBATCH -J 5\n#SBATCH -p work\necho 5 begin\n")

        #agios的配置文件
        #/GPUFS/sysu_hshen_2/agios/agios-master/agios.conf

        f.write(f"mv {agios_path}agios.conf {agios_path}agios.conf.bak\n") #这是写在脚本中的
        f.write(f"mv {agios_path}{algo}.conf {agios_path}agios.conf\n")

        command_list=[]
        for n in threads:
            for b in blocks:
                for t in xfers:
                    command=f"yhrun -n {n} -p work ~/lib/bin/ior -a MPIIO -b {b}m -F -z -t {t}k -i5 >{base_dir}/ior-agios/{algo}_{n}_{b}_{t}.result\n"
                    #yhrun -n 6 -p work ~/lib/bin/ior -a MPIIO -b 1024m -F -z -t 128k -i5
                    command_list.append(command)

        for command in command_list:
            f.write(command)

        f.write(f"mv {agios_path}agios.conf {agios_path}{algo}.conf\n")#恢复配置文件
        f.write(f"mv {agios_path}agios.conf.bak {agios_path}agios.conf\n")
        


