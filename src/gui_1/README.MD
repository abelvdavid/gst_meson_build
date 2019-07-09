# Adding Multiple Dependencies

Very few applications are fully self-contained, but rather they use external libraries and frameworks to do their work. Meson makes it very easy to find and use external dependencies. Here is how one would use the zlib compression library.

```meson
zdep = dependency('zlib', version : '>=1.2.8')
exe = executable('zlibprog', 'prog.c', dependencies : zdep)
```

First Meson is told to find the external library `zlib` and error out if it is not found. The `version` keyword is optional and specifies a version requirement for the dependency. Then an executable is built using the specified dependency. Note how the user does not need to manually handle compiler or linker flags or deal with any other minutiae.

If you have multiple dependencies, pass them as an array:

```meson
executable('manydeps', 'file.c', dependencies : [dep1, dep2, dep3, dep4])
```

If the dependency is optional, you can tell Meson not to error out if the dependency is not found and then do further configuration.

```meson
opt_dep = dependency('somedep', required : false)
if opt_dep.found()
  # Do something.
else
  # Do something else.
endif
```

You can pass the `opt_dep` variable to target construction functions whether the actual dependency was found or not. Meson will ignore non-found dependencies.

Meson also allows to get variables that are defined in the `pkg-config` file. This can be done by using the`get_pkgconfig_variable` function.

```meson
zdep_prefix = zdep.get_pkgconfig_variable('prefix')
```

These variables can also be redefined by passing the `define_variable` parameter, which might be useful in certain situations:

```meson
zdep_prefix = zdep.get_pkgconfig_variable('libdir', define_variable: ['prefix', '/tmp'])
```

The dependency detector works with all libraries that provide a `pkg-config` file. Unfortunately several packages don't provide pkg-config files. Meson has autodetection support for some of these, and they are described [later in this page](https://mesonbuild.com/Dependencies.html#dependencies-with-custom-lookup-functionality).