# d-opensimplex2

This library is a D implementation of [OpenSimplex2](https://github.com/KdotJPG/OpenSimplex2), a public-domain noise algorithm similar to Perlin noise and Simplex noise. Like the algorithm itself, this library is released into the public domain.


## The Algorithm
I am not the author of the OpenSimplex2 algorithm, I just ported it to D (which involved barely more than a copy-paste of the Java code). I have no idea what most of the code does 😀 But it compiles and apparently produces the expected output so that's good!

The algorithm itself was created by [KdotJPG](https://github.com/KdotJPG/OpenSimplex2).


## Roadmap
Version 1.0.0 is a direct port of the Java code, but I would like to add an interface that's more idiomatic in the D world, perhaps more in line with [std.random](https://dlang.org/library/std/random.html).


## Public Domain Dedication
This is free and unencumbered software released into the public domain. See [UNLICENSE](./UNLICENSE).
