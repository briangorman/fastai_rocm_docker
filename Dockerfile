FROM rocm/pytorch:rocm2.2_ubuntu16.04_py3.6_pytorch
MAINTAINER Brian Gorman <briangorman@outlook.com>

RUN apt-get update -y

RUN python3.6 -m pip install --upgrade pip
RUN python3.6 -m pip install fastai
RUN python3.6 -m pip install jupyter

EXPOSE 1337

CMD ["jupyter", "notebook", "--allow-root", "--port=1337", "--ip=0.0.0.0"]
