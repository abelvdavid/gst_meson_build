


# 9_Jul
## TASK_1_Begin 
### Sub_T1 Installed an uninstalled version 
> from https://github.com/abelvdavid/gst_autotool_build using autotool build system 
### Sub_T2 Added a simple demo project 
> from https://gstreamer.freedesktop.org/documentation/tutorials/basic/hello-world.html?gi-language=c using meson build system (avilable at the src dir)
## TASK_1_Conclusion 
+ It is working

## TASK_2_Begin
### Sub_T1 Multiple dependencies
> editing meson file
.

___________________________________________________________________________________
_______________________________________________________________________________________
### 4Jul Installing from other site
#Site Details
http://www.linuxfromscratch.org/blfs/view/8.4/multimedia/gstreamer10.html
#After Downloading
./configure --prefix=/usr \
            --with-package-name="GStreamer 1.14.4 BLFS" \
            --with-package-origin="http://www.linuxfromscratch.org/blfs/view/svn/" &&
make



### Editing meson build file
"""
#if not get_option('disable_gst_plugins_ugly')
#    subprojects += ['gst-plugins-ugly']
#endif

#if not get_option('disable_gst_plugins_bad')
#    subprojects += ['gst-plugins-bad']
#endif
"""
-> The Edit is working.
-> Now what about plugin ?? NOT WORKING


## Jul 01 < Building tag 1.14.0 instead of MASTER
### Build Command Used
meson build/
ninja -C build/
meson install -C build/ 

## Build from scratch

In file included from /usr/include/libpng12/png.h:321:0,
                 from ../subprojects/dssim/src/main.c:27:
/usr/include/libpng12/pngconf.h:383:21: error: expected '=', ',', ';', 'asm' or '__attribute__' before '.' token
            __pngconf.h__ in libpng already includes setjmp.h;
                     ^
/usr/include/libpng12/pngconf.h:384:12: error: unknown type name '__dont__'
            __dont__ include it again.;
            ^
/usr/include/libpng12/pngconf.h:384:29: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'it'
            __dont__ include it again.;
                             ^
/usr/include/libpng12/pngconf.h:384:29: error: unknown type name 'it'

## using ninja -C build git-update
### ERROR
[71/4943] Generating gstmpegts-enumtypes.h with a meson_exe.py custom command.
ninja: build stopped: subcommand failed.


## Deleted build dir and rebuilding using meson build
ERROR

## Running Script setup_gstream_build.sh
Not Building







# Reference Links 

https://gstreamer.freedesktop.org/documentation/frequently-asked-questions/developing.html?gi-language=c

https://gstconf.ubicast.tv/videos/gstreamer-development-on-windows-ans-faster-builds-everywhere-with-meson/

https://mesonbuild.com/Build-options.html

https://fhackts.wordpress.com/2017/11/14/setting-up-a-gst_uninstalled-environment-with-gst-build/

http://blog.nirbheek.in/2016/05/gstreamer-and-meson-new-hope.html

https://github.com/centricular/proxy-libintl/blob/master/meson.build

https://gitlab.freedesktop.org/gstreamer/gst-build/

https://blogs.igalia.com/vjaquez/2018/04/17/how-to-setup-a-gst-build-environment-with-intels-va-api-stack/

http://www.linuxfromscratch.org/blfs/view/svn/multimedia/gstreamer10.html

