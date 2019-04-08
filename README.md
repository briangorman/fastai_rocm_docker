# fastai_rocm

This project generates a docker image that enables rapid development with the [fast.ai v1](https://github.com/fastai/fastai) library with Modern AMD graphics cards through the [Rocm stack](https://github.com/RadeonOpenCompute/ROCm).

This docker image contains:

* Jupyter Notebook
* Pytorch
* Fast.ai
* Rocm Utilities
* Python 3.6

Usage
```bash
sudo docker run -it -v $HOME:/data -p 1337:1337 --privileged --rm --device=/dev/kfd --device=/dev/dri --group-add video briangorman/fastai_rocm
```

Your home directory will be exposed in /data. The docker container will output a link to access the jupyter notebook


## Requirements
[Modern Linux kernel](https://rocm.github.io/ROCmInstall.html#rocm-support-in-upstream-linux-kernels)

[Hardware](https://rocm.github.io/ROCmInstall.html#hardware-support)
