# llvm-git

LLVM toolchain packages for Archlinux. (git version)

# Version

## LLVM

- 15.0.0

- commit: 5d787689b14574fe58ba9798563f4a6df6059fbf

## SPIRV-LLVM-Translator

- 15.0.0

- commit: 21fee92cd738a26e82f421416a660325b6fede26

# Build

    git clone https://github.com/blacksky3/llvm-git.git
    cd llvm-git
    ./build.sh

## After succeful build

After a succeful build of the toolchain you'll need to recompile mesa package, because mesa and llvm are closely tied together. Everytime llvm changes/updates, mesa needs to be rebuilt.

You can rebuild mesa and lib32-mesa with this repo: https://github.com/blacksky3/mesa-git.git

This mesa package provide mesa and lib32-mesa. (git version)

# Prebuild package

Prebuild package are available at https://repo.blacksky3.com/x86_64/llvm

You can add this repo to your pacman.conf

    [llvm]
    SigLevel = Optional TrustAll
    Server = https://repo.blacksky3.com/$arch/$repo

# Contact info

blacksky3@tuta.io if you have any problems or bugs report.

# Donation

BTC : bc1quz6zcjjy769cn9fd42r89hfh9unr4u2w4sfxer

ETH : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

DAI : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

LINK : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476
