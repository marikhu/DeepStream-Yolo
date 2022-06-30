#!/bin/bash
set -e

#xhost +

# https://catalog.ngc.nvidia.com/orgs/nvidia/containers/deepstream

docker run --gpus all -it --rm \
	--net=host --privileged \
	--name deepstraem-test-6.1 \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v ~/works:/works \
	-e DISPLAY=$DISPLAY \
	-w /opt/nvidia/deepstream/deepstream-6.1 \
	nvcr.io/nvidia/deepstream:6.1-devel


# deepstream-app -c samples/configs/deepstream-app/source30_1080p_dec_infer-resnet_tiled_display_int8.txt
# deepstream-app -c deepstream_app_config-2classes.txt
