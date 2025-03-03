# 使用官方的Python基础镜像
FROM python:3.10

# 设置工作目录
WORKDIR /opencompass

# 从GitHub拉取应用源码（仅拉取main分支的最新代码）
RUN apt-get update && apt-get install -y git && \
    git clone --single-branch --branch main https://github.com/open-compass/opencompass.git /opencompass

# 安装所需的Python包
RUN pip install -e ".[api]"
