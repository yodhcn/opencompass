# 使用官方的Python基础镜像
FROM python:3.10

# 设置工作目录
WORKDIR /opencompass

# 安装所需的Python包
RUN pip install "opencompass[api]"
