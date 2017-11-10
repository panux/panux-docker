FROM panux/panux:x86_64

RUN adduser demo -D
RUN echo y | lpkg install bash sl libintl
RUN chmod 4755 /usr/bin/busybox
USER demo
WORKDIR "/home/demo"

ENTRYPOINT ["/bin/bash"]
