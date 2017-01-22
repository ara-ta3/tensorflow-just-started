DOCKER=$(shell which docker)

run:
	$(DOCKER) run -t -p 8888:8888 -v $(PWD):/notebooks jupyter/notebook jupyter notebook --no-browser --NotebookApp.notebook_dir=/notebooks
