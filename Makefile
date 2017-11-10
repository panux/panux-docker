containers = nginx demobox

all: $(containers)

.PHONY: $(containers) panux

panux:
	docker pull panux/panux:x86_64
	docker pull panux/panux:x86

$(containers): panux
	docker build -t panux/$@ $@

push:
	bash push.sh $(containers)
