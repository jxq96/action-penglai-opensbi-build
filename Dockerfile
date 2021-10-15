FROM ddnirvana/penglai-enclave:v0.4
MAINTAINER Xueqiang Jiang "jiangxq@sjtu.edu.cn"
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
