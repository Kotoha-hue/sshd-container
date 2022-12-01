FROM ubuntu:latest
EXPOSE 22/tcp
RUN apt update && apt-get install -y ssh
RUN useradd guest
USER guest
WORKDIR /home/guest
ENTRYPOINT [ "/bin/bash" ]