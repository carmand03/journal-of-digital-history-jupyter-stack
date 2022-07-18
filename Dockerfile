FROM python:3.7
WORKDIR $HOME
RUN python -m pip install --upgrade pip
RUN pip install notebook==6.2.0
RUN python -m pip install jupyter_contrib_nbextensions
RUN jupyter contrib nbextension install --user
# enable the Nbextensions
RUN jupyter nbextension enable code_prettify/code_prettify
RUN jupyter nbextension enable toc2/main
ENTRYPOINT jupyter notebook --allow-root