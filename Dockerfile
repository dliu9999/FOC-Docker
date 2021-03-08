ARG BASE_CONTAINER=ucsdets/datascience-notebook:2020.2-stable

FROM $BASE_CONTAINER

# change to root to install packages
USER root

# install packages
RUN pip install pytrends twint pageviewapi wikipedia
RUN pip install pandas==1.2.3

# change back to notebook user
COPY /run_jupyter.sh /
RUN chmod 755 /run_jupyter.sh
USER $NB_UID
