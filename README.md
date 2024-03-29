# A Deep Learning Pipeline for Classifying Imaging Flow Cytobot Imagery

This is a convolutional neural network for classifying IFCB imagery of plankton.

This code is for the Nardelli et al OCEANS 2021 conference paper: "Developing a convolutional neural network to classify phytoplankton images collected with an Imaging FlowCytobot along the West Antarctic Peninsula" https://doi.org/10.23919/OCEANS44145.2021.9706072

and the Marine Technology Society Journal Nardelli et al paper "Developing a convolutional neural network to classify Antarctic phytoplankton images" which was solicited and is currently in prep.

## Running the Code:

The two notebooks you need are:
- `python/model_development.ipynb` for training the model and running assessments with the train/val data
- `python/model_predictions_and_analysis.ipynb` for making predictions on an arbitrarily large dataset as well as pulling out random or balanced samples from large datasets and running assessments on it

## Environment Setup:

For env setup you can either use [Docker](https://www.docker.com/products/docker-desktop) or [conda](https://docs.anaconda.com/anaconda/install/). I recommend conda for this case since it is typically easier to access GPU hardware without containerization but I have included the Docker setup in case you plan to spin this up in the cloud and need it. 

#### If you use conda all you need to do it run:

`conda env create --name ifcb_env --file=environments.yml`

#### And then to run the notebooks just run:

`jupyter notebook` 


#### If you use Docker these instructions should get you set up:

`sudo docker build -t deepearthml .`

`sudo docker run --runtime=nvidia --name ifcbcont -p 8888:8888 -p 6006:6006 -v ~/:/host -v /media/clifgray:/datarepo -it deepearthml`

sudo docker run --runtime=nvidia --name ifcbcont -p 8888:8888 -p 6006:6006 -v ~/:/host -it deepearthml

if you have a newer version of nvidia-docker this may be:

`sudo docker run --gpus all --name ifcbcont -p 8888:8888 -p 6006:6006 -v ~/:/host -v /media/clifgray:/datarepo -it deepearthml`

then just type 

`exit`

to restart it 

`sudo docker start ifcbcont`

to get it back on terminal

`sudo docker attach ifcbcont`

#### Once you've built it all in Docker run:

to start up jupyter

`jupyter notebook --allow-root /host --ip 0.0.0.0`

## Data Setup

all data was downloading from the Box setup and merged 

all labels and metadata were downloaded from EcoTaxa

all IFCB images were unzipped and put into a single folder along with labels by doing

```
find . -name "*.zip" | while read filename; do unzip -o -d "`basename -s .zip "$filename"`" "$filename"; done;

find . -mindepth 2 -type f -print -exec mv {} . \;

```

for the second load of data I used
```
find . -name "*.zip" | while read filename; do unzip -o -d "`basename -s .zip "$filename"`" "$filename"; done;

find . -name "*import_all*.zip" -type f -print -exec mv {} . \;
```
then move them all to a dir called all_imagery

then nav to there unzip by running
```
find . -name "*.zip" | while read filename; do unzip -o -d "`basename -s .zip "$filename"`" "$filename"; done;

find . -mindepth 2 -type f -print -exec mv {} . \;

```
