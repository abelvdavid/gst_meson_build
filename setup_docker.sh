sudo docker run -it --net=host \
                --env="DISPLAY" \
                --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
                --volume="$HOME/Workspace/Trails/z_docker_share:/root/home/host_share:rw" \
                --name=jul_15_gst \
                abelvdavid/my_ubuntu:gstreamer-1.8_MB \
                /bin/bash

