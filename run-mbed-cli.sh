#!/bin/bash

#/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal

#Config Section
GCC_bin_PATH='gcc/gcc-arm-none-eabi-7-2017-q4-major/bin'


# DO NOT TOUCH
CWD=$PWD
MBED_CLI_PATH="$CWD/$GCC_PATH;"
export PATH="$MBED_CLI_PATH;$PATH"

#Make it pretty
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1='(mbed-clii) \W \\$'
PS1='\[\033[36m\](mbed-cli)\[\033[m\] \[\033[32m\]\w\[\033[m\] \\$ '

open -W -n --fresh -a /Applications/Utilities/Terminal.app 
echo "terminal should be running now...."
