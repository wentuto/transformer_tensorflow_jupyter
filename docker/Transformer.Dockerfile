FROM tensorflow/tensorflow:devel-gpu as transformer-base
WORKDIR /

RUN apt update && apt install -y --no-install-recommends \
    git \
    build-essential \
    python3-dev \
    python3-pip \
    python3-setuptools 
RUN pip3 -q install pip --upgrade
# Install all basic packages
RUN python3 -m pip install \
    jupyter \
    numpy pandas
RUN python3 -m pip install opencv-python opencv-contrib-python
RUN python3 -m pip install tensorflow
RUN python3 -m pip install -q -U tensorflow-text
RUN python3 -m pip install matplotlib
RUN python3 -m pip install -q tensorflow_datasets
# install libcudnn8.6 for tensorflow 2.13  
RUN apt-get install -y --no-install-recommends libcudnn8=8.6.0.163-1+cuda11.8 \
    vim
RUN python3 -m pip install opencc-python-reimplemented
