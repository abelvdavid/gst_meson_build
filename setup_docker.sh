sudo docker run -it --net=host \
                --env="DISPLAY" \
                --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
                --volume="$HOME/Workspace/Trails/z_docker_share:/root/home/host_share:rw" \
                --name=gst_tt_2_gui \
                abelvdavid/my_ubuntu:git_only \
                /bin/bash

