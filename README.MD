





### MESON ARGUMENTS
With additional arguments meson configure can be used to change options for a previously configured build directory. All options passed to this command are in the form -D "option"="value". For example:

meson configure build/ -Dprefix=/tmp/install -Dglx=true