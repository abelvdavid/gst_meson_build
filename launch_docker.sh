sudo docker run -it --net=host \
                --user=$(id -u) \
                -e DISPLAY=$DISPLAY \
                -e QT_GRAPHICSSYSTEM=native \
                -e CONTAINER_NAME=gst_tt_2_gui \
                -e USER=$USER \
                --workdir=/home/$USER \
                -v "/tmp/.X11-unix:/tmp/.X11-unix" \
                -v "/etc/group:/etc/group:ro" \
                -v "/etc/passwd:/etc/passwd:ro" \
                -v "/etc/shadow:/etc/shadow:ro" \
                -v "/etc/sudoers.d:/etc/sudoers.d:ro" \
                --device=/dev/dri:/dev/dri \
                --volume="/home/$USER/Workspace/Trails/z_docker_share:/home/$USER/host_share:rw" \
                --name=gst_tt_2_gui \
                abelvdavid/my_ubuntu:git_only \
                /bin/bash
