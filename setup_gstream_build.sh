#!/bin/bash
FOLDER=/home/ignitarium/all_in/ws_ignit/dev/gst_meson_build/src/gstreamer

sudo apt-get install -y --force-yes python3-pip ninja-build \
                                    pkg-config gobject-introspection gnome-devel \
                                    bison flex libgirepository1.0-dev liborc-0.4-dev
pip install meson


mkdir $FOLDER
git clone https://github.com/GStreamer/gst-build.git $FOLDER
cd $FOLDER
git tag -l
git checkout <tag-name>
mkdir build
meson -Denable_python=true build
cd build
ninja
echo "Now run: $FOLDER/gst-uninstalled.py"