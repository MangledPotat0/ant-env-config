# Environment configuration
The goal of this repo is to make a one stop setup routine (either running `deploy.sh` for unix environment or `deploy.bat` for windows) to set up everything needed for the entire project, so that redeployment after computer wipe or deploying to a new system has minimal complications.

# Linux (Only tested on Ubuntu 20.04)

Install [Docker](https://www.docker.com/) and build a container by running `deploy.sh`. If things go smoothly it will download everything and build the docker environment with all the python packages required. The Docker environment is configured to be able to access the Xservice so any code or application that has GUI can be run, including SLEAP.

# Windows 10/11

Docker windows cannot access the GUI, so if GUI is needed, install python 3.7 and pip. Then, run

``` pip install pip-tools```

So that we can install all the packages properly. Once pip-tools is installed, run

``` pip install requirements.txt```

Unfortunately this doesn't set up the graphic driver and CuDNN needed to use tensorflow-gpu so these need to be installed manually.

# Mac OS

I don't know whether Mac lets Docker access graphic interface. For now just install python, pip, pip-tools and then set up package dependencies using

``` pip install requirements.txt```

I don't know if all Macs use AMD GPUs but the ones that do cannot use CUDA.
