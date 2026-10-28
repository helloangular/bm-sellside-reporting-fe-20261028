# STAND-IN for the application's make targets used by #{BUILD_COMMAND}
IMAGE ?= localhost:3546/bm-sellside-reporting-fe-20261028
build:
	docker build -t $(IMAGE):$(BUILD_VERSION) .
push:
	docker push $(IMAGE):$(BUILD_VERSION)
remove:
	-docker image rm $(IMAGE):$(BUILD_VERSION)
post-clean:
	@echo post-clean
.PHONY: build push remove post-clean
