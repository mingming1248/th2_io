import shutil

source_dir="F:\\01_个人资料\\LatexThesis4SYSU\\hmm0602\\result\\"
dest_dir="F:\\01_个人资料\\LatexThesis4SYSU\\figures\\imgs\\"

for i in range(6):
    shutil.copy(f"{source_dir}3.3.{i+1}\\33{i+1}.pdf",f"{dest_dir}33{i+1}.pdf")