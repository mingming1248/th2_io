import shutil
import os
import zipfile

#用于生成压缩包，每次调整参数后压缩所有文件，然后上传到天河2的对应位置

base_dir="F:\\01_个人资料\\LatexThesis4SYSU\\hmm0602\\result\\"

to_tianhe2=f"{base_dir}result" #新建一个result目录，用于上传到天河2

if not os.path.exists(to_tianhe2):#如果不存在就创建
    os.mkdir(to_tianhe2)

for i in range(6): #目录等级和本地等级对应
    last_dir=f"4.3.{i+1}"
    final_dir=f"{to_tianhe2}{os.sep}{last_dir}"
    if not os.path.exists(final_dir):#如果不存在就创建
        os.mkdir(final_dir)
    shutil.copy(f"{base_dir}{os.sep}{last_dir}{os.sep}gen_yhbatch.py",f"{final_dir}{os.sep}gen_yhbatch.py")

def tree(dir):#递归获取目录中的内容，类似于linux的tree命令
    for dirpath, dirs, files in os.walk(dir): #生成器3元组 (dirpath, dirnames, filenames)【文件夹路径, 文件夹名字, 文件名，会自动递归进入子目录
        print(dirpath)
        for file in files:
            print(file)
        for dir in dirs:
            tree(dir)

tree(to_tianhe2)#调用tree函数,打印到终端

# with zipfile.ZipFile("result.zip","w") as zf:#实例化一个zip文件
#     zf.write(.) #只能一个文件，需要配合递归获取子目录。不用这种方法了

os.system(f"zip -r result.zip {to_tianhe2}{os.sep}*") #调用系统提供的zip方法

# os.rmdir(to_tianhe2)#删除非空文件夹，如果是删除文件用remove
shutil.rmtree(to_tianhe2)