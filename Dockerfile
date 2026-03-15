# 選擇你想要的 Linux 版本
FROM ubuntu:latest

# 安裝基本工具 (依需求增減)
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    git \
    && rm -rf /var/lib/apt/lists/*

# 讓容器保持運行，避免部署後立即結束
CMD ["tail", "-f", "/dev/null"]
