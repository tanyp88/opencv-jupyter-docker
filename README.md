# Purpose
Create a ubuntu20.04 base docker to do opencv programming using jupyter lab

# How to use
run $docker compose up

to get the initial notebook password,

run $docker compose up -d 

next time
# Using docker run

the first time

$docker run -it -d -p 8888:8888 -v ./opencv:/home/opencv --name opencv-jupyter tanyep/ubuntu20:jupyterlab.2 

To create a container,and to access the docker cmdline,or accessing http://localhost:8888,using the Inial password "Haha".

$docker exec -it -d -p 8888:8888 -v ./opencv:/home/opencv opencv-jupyter  tanyep/ubuntu20:jupyterlab.2 /bin/bash

# Nvidia gpu options

pls add "--gpus all" to the cmdline above.
