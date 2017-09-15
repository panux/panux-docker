containers = nginx

all: $(containers)

.PHONY: $(containers) panux

panux:
	docker pull panux/panux:x86_64

$(containers): panux
	docker build -t panux/$@:x86_64 $@

push:
	bash push.sh $(containers)
