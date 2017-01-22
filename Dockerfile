FROM jupyter/notebook
COPY ./requirements.txt /opt/requirements.txt
RUN pip3 install -r /opt/requirements.txt
CMD ["jupyter", "notebook", "--no-browser",  "--NotebookApp.notebook_dir=/notebooks"]
