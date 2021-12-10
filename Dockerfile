FROM ubuntu:20.04

ENV TZ=America/Sao_Paulo

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update \
    && apt-get install -y gcc clang make lldb valgrind python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade --no-cache-dir pip \
    && pip install --no-cache-dir norminette

WORKDIR /home/pocketspace/

CMD ["bash"]
