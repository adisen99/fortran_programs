# Manning Tutorial

This directory contains a basic fortran project on the evolution of
tsunami waves using the concept of shallow water equations. This is also
a basic introduction to the use of the Fortran Package manager (fpm) and
using the python script for visualising the system.

It is based on the exercise of Chapter2 of the book [**"Modern
Fortran"**](https://www.manning.com/books/modern-fortran) by *Milan
Curcic*.

### Dependencies

- `fpm` In order to run the code, the user needs the fortran package manager
available as a binary in the latest releases of the repository of
[Fortan-Lang](https://github.com/fortran-lang/fpm/releases). Install the
binary following the given instructions.

- `ffmpeg`
- `python3`
- `matplotlib` Python3 package
- `numpy` Python3 package

### Usage

From the base directory run the command run `./run.sh` shell script.
A video file named `water_height.mp4` will be created.

Science behind the shallow water equations - [Refer
Wikipedia](https://en.wikipedia.org/wiki/Shallow_water_equations)
