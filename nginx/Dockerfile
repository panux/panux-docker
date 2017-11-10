FROM panux/panux:x86_64

RUN echo y | lpkg install nginx

ENTRYPOINT ["/bin/nginx", "-g", "daemon off;"]
