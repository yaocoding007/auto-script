import os
from PyPDF2 import PdfMerger
from natsort import natsorted

# 获取当前目录下的所有文件
files = os.listdir('./')

# 遍历所有文件
for index, file in enumerate(files):
    # 检查文件是否为 PDF
    if file.endswith('.pdf'):
        # 重命名文件
        os.rename(file, f'{index}.pdf')

target_path = './'
pdf_lst = [f for f in os.listdir(target_path) if f.endswith('.pdf')]

list_pdf = natsorted(pdf_lst)

pdf_lst = [os.path.join(target_path, filename) for filename in list_pdf]

file_merger = PdfMerger()
for pdf in pdf_lst:
    file_merger.append(pdf)     # 合并pdf文件

file_merger.write("./v8.pdf")


