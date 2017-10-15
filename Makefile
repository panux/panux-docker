containers = nginx

all: $(containers)

.PHONY: $(containers) panux

panux:
	docker pull panux/panux:x86_64
	docker pull panux/panux:x86

$(containers): panux
	docker build -t panux/$@:x86_64 $@
	docker build -t panux/$@:x86 $@

push:
	bash push.sh $(containers)
