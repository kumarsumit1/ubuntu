ARG UBUNTU_VERSION
FROM ubuntu:${UBUNTU_VERSION}
RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    net-tools netcat vim-tiny tzdata

#ENV TZ 'Asia/Kolkata'
RUN echo $TZ > /etc/timezone && \
    rm /etc/localtime && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    apt-get clean

EXPOSE 9000
ENTRYPOINT ["/bin/bash"]

#CMD ["tail","-f","/dev/null"]