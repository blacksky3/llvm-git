#!/usr/bin/bash

# _     _            _        _          _____
#| |__ | | __ _  ___| | _____| | ___   _|___ /
#| '_ \| |/ _` |/ __| |/ / __| |/ / | | | |_ \
#| |_) | | (_| | (__|   <\__ \   <| |_| |___) |
#|_.__/|_|\__,_|\___|_|\_\___/_|\_\\__, |____/
#                                  |___/

#Maintainer: blacksky3 <blacksky3@tuta.io> <https://github.com/blacksky3>

cd llvm-git && makepkg -si --noconfirm && cd ..

cd lld-git && makepkg -si --noconfirm && cd ..

cd polly-git && makepkg -si --noconfirm && cd ..

cd compiler-rt-git && makepkg -si --noconfirm && cd ..

cd clang-git && makepkg -si --noconfirm && cd ..

cd lldb-git && makepkg -si --noconfirm && cd ..

cd spirv-llvm-translator-git && makepkg -si --noconfirm && cd ..

cd libclc-git && makepkg -si --noconfirm && cd ..

cd libc++-git && makepkg -si --noconfirm && cd ..

cd openmp-git && makepkg -si --noconfirm && cd ..

cd lib32-llvm-git && makepkg -si --noconfirm && cd ..

cd lib32-clang-git && makepkg -si --noconfirm && cd ..

# make a copy of every pkg in package-$(date -I)/ dir

mkdir package-$(date -I)

cp -v */*.pkg.tar.zst package-$(date -I)/

# clean build dir

rm -rf */src/
rm -rf */pkg/
