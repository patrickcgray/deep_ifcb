FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04
MAINTAINER Patrick Gray <pgrayobx@gmail.com>

### setup conda

ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"
RUN apt-get update

RUN apt-get install -y wget && rm -rf /var/lib/apt/lists/*

RUN wget \
    https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir /root/.conda \
    && bash Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f Miniconda3-latest-Linux-x86_64.sh 
RUN conda --version

# don't want to be updating but need to in order to use opencv
#RUN apt update
#RUN apt install libgl1-mesa-glx

### install the environment with conda
# note that I'm installing keras-gpu 2.2.4 because my CUDA version is 10.0 but it could be changed easily to tf.keras on a different machine

ADD environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml

# Pull the environment name out of the environment.yml
RUN echo "source activate $(head -1 /tmp/environment.yml | cut -d' ' -f2)" > ~/.bashrc
ENV PATH /opt/conda/envs/$(head -1 /tmp/environment.yml | cut -d' ' -f2)/bin:$PATH
