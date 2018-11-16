FROM ubuntu
RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    net-tools netcat \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
EXPOSE 9000
ENTRYPOINT ["/bin/bash"]