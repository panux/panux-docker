FROM panux/panux:x86_64

RUN adduser demo -D
RUN echo y | lpkg install lpkg-https
RUN echo y | lpkg install bash sl nano python python3 gcc gpp make libc-dev git go lua bzip2 xz
RUN chmod 4755 /usr/bin/busybox
RUN echo "PS1='\[\033[01;32m\]\u@panux\[\033[01;34m\] \w \$\[\033[00m\] '" >> /home/demo/.bashrc
USER demo
WORKDIR "/home/demo"

ENTRYPOINT ["/bin/bash"]
