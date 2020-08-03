# A Deep Learning Pipeline for Classifying Imaging Flow Cytobot Imagery

## Environment Setup:

`sudo docker build -t deepearthml .`

`sudo docker run --runtime=nvidia --name ifcbcont -p 8888:8888 -p 6006:6006 -v ~/:/host -v /media/clifgray:/datarepo -it deepearthml`

if you have a newer version of nvidia-docker this may be:

`sudo docker run --gpus all --name ifcbcont -p 8888:8888 -p 6006:6006 -v ~/:/host -v /media/clifgray:/datarepo -it deepearthml`

then just type 

`exit`

to restart it 

`sudo docker start ifcbcont`

to get it back on terminal

`sudo docker attach ifcbcont`

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