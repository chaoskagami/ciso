ciso is a simple commandline utility to compress PSP iso files.

This package was made to be compatible with OSX; it was a port of a package provided by Ubuntu: http://packages.ubuntu.com/search?keywords=ciso

This variant of ciso requires libzopfli for better compression ratio; it is however, far slower. The resultant ciso files work on PPSSPP and are compatible to ones produced by the original zlib-based ciso. I'm unsure if they will work on an actual PSP due to memory constraints.

You'll need libzopfli to build this: https://github.com/google/zopfli

# Installation

    make
    make install # (optional)

# Usage

To decompress a cso file:

    ciso 0 infile.cso outfile.iso

To compress an iso file:

    ciso iter infile.iso outfile.cso

where iter is an integer that is the number of iterations per block for zopfli to compute. For quick use, 1 is recommended. For a bit more compression, 5 is a good bet; anything higher is going to be slow and have an insignificant ratio decrease (or none at all.) Going over 10 for iterations is not recommended unless you'd like a 185MB game to take 25h to compress.
