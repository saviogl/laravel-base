IMAGE_NAME = 'saviogl/laravel-base'

.PHONY: build push

build:
	docker build -t $(IMAGE_NAME) .

push:
	docker push $(IMAGE_NAME)

