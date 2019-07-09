sudo docker run -it --net=host \
                -e DISPLAY=$DISPLAY \
                -e QT_GRAPHICSSYSTEM=native \
                -e CONTAINER_NAME=gst_tt_5_gui \
                --workdir=/home/$USER \
                -v "/tmp/.X11-unix:/tmp/.X11-unix" \
                --device=/dev/dri:/dev/dri \
                --volume="/home/$USER/Workspace/Trails/z_docker_share:/home/$USER/host_share:rw" \
                --name=gst_tt_5_gui \
                abelvdavid/my_ubuntu:git_only \
                /bin/bash
