DOCKER=$(shell which docker)
docker_image_name=tensorflow_just_started

build:
	$(DOCKER) build -t $(docker_image_name) .

run: build
	$(DOCKER) run -it -v ${PWD}:/notebooks -p 8888:8888 $(docker_image_name)

cifar-10-binary.tar.gz: data
	cd $< && wget https://www.cs.toronto.edu/~kriz/cifar-10-binary.tar.gz
	cd $< && tar xzvf $@
	cd $</cifar-10-binary/* ./$<

data:
	mkdir $@
