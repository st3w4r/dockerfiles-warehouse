docker run --rm --name jupyter -p 10000:8888 -e JUPYTER_ENABLE_LAB=yes -v "$PWD":/home/jovyan/work -w /home/jovyan/work jupyter-fastai
