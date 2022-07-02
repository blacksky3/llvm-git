# _     _            _        _          _____
#| |__ | | __ _  ___| | _____| | ___   _|___ /
#| '_ \| |/ _` |/ __| |/ / __| |/ / | | | |_ \
#| |_) | | (_| | (__|   <\__ \   <| |_| |___) |
#|_.__/|_|\__,_|\___|_|\_\___/_|\_\\__, |____/
#                                  |___/

#Maintainer: blacksky3 <blacksky3@tuta.io> <https://github.com/blacksky3>

#!/usr/bin/bash

source=$(pwd)

echo "${source}"

# build

cd llvm-git && makepkg -si && cd ${source}

cd lld-git && makepkg -si && cd ${source}

cd polly-git && makepkg -si && cd ${source}

cd compiler-rt-git && makepkg -si && cd ${source}

cd clang-git && makepkg -si && cd ${source}

cd lldb-git && makepkg -si && cd ${source}

cd spirv-llvm-translator-git && makepkg -si && cd ${source}

cd libclc-git && makepkg -si && cd ${source}

cd libc++-git && makepkg -si && cd ${source}

cd openmp-git && makepkg -si && cd ${source}

cd lib32-llvm-git && makepkg -si && cd ${source}

cd lib32-clang-git && makepkg -si && cd ${source}

# make a copy of every pkg in package/ dir

mkdir package

cp -v */*.pkg.tar.zst package/

# clean build dir

rm -rf */src/
rm -rf */pkg/
