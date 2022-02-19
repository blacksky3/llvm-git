#!/usr/bin/bash

#_                   _ _ _  _ _____ _  _
#| | _______   ____ _| | | || |___  | || |
#| |/ / _ \ \ / / _` | | | || |_ / /| || |_
#|   <  __/\ V / (_| | | |__   _/ / |__   _|
#|_|\_\___| \_/ \__,_|_|_|  |_|/_/     |_|

###
# my personnal build command (for my machine). Comment out for your machine.
#sed -i '92s/ninja/ninja -j12/' clang-git/PKGBUILD
#sed -i 's/ninja -C build all/ninja -j12 -C build all/' lib32-llvm-git/PKGBUILD
###

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
