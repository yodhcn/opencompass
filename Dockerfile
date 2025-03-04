# 使用官方的Python基础镜像
FROM python:3.10

# 设置工作目录
WORKDIR /opencompass

# 安装所需的Python包
RUN pip install "opencompass[api]"

# 保持容器前台运行
# Docker 容器的生命周期，取决于主进程的存活
# /dev/null 是一个特殊设备文件，写入的数据会被丢弃，读取时始终为空
# tail -f /dev/null 相当于告诉 tail 持续监听一个永远不会有内容变化的文件
CMD ["tail", "-f", "/dev/null"]
