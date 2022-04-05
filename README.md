# llvm-git

LLVM toolchain package for Archlinux. (git version)

# Version

- 15.0.0

- commit:6c9bc2dd1ca7bcbbd218e50e5f7f926dd99e6c53

# Build

    git clone https://github.com/blacksky3/linux-xanmod.git
    cd linux-xanmod/{edge,stable,tt,lts.tt-edge.bore-edge.bore,cacule-edge,cacule-rdb-edge}
    env_compiler=(1 or 2) makepkg -s
    
## After succeful build

After a succeful build of the toolchain you'll need to recompile mesa package, because mesa and llvm are closely tied together. Everytime the llvm changes/updates, mesa needs to be rebuilt.

You can rebuild mesa and lib32-mesa with this repo: https://github.com/blacksky3/mesa-git.git

This mesa package provide mesa and lib32-mesa (git version)
