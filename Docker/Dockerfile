FROM nvidia/cuda:9.0-base

COPY Docker/* /root/
COPY ./wildcat /root/wildcat/
COPY ./requirements.txt /root

WORKDIR /root

RUN apt-get update && apt-get -y install python3 python3-pip git vim && \
    ./setup.sh


ENTRYPOINT /root/execute.sh
