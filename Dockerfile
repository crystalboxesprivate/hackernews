FROM ubuntu

RUN dpkg --add-architecture i386
RUN apt-get update 
RUN apt-get install -y tar openssl
RUN apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386

RUN mkdir -p /app
COPY ./plt /app/plt


RUN tar -C /app -zxvf /app/plt/plt-372-bin-i386-linux-ubuntu.tar.gz
ENV PATH "$PATH:/app/home/snowbear/plt/bin"


COPY ./src /app/src

COPY ./run.sh /app
RUN chmod +x /app/run.sh


WORKDIR /app/src

EXPOSE 8080
CMD ["bash", "/app/run.sh"]

