# deep_ifcb

Environment Setup:

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