container_name=$1
host_port=$2
docker run --gpus all -it \
	--name $container_name \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v ~/.Xauthority:/root/.Xauthority \
	-v ~/hushon:/workspace \
	--ipc=host \
	-p $host_port:8888 \
	--workdir="/workspace" \
	hushon/tensorflow \
	/bin/bash
