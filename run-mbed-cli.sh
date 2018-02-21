#!/bin/bash

#/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal

#Config Section
GCC_PATH='gcc/gcc-arm-none-eabi-7-2017-q4-major/bin'
MBED_INSTALLER_VERSION="0.0.1"

###### DO NOT TOUCH #####
PYTHON_PATH="../MacOS"
MBED_BINS="bin"
GIT_PATH="git"
export GIT_TEMPLATE_DIR="$RESOURCEPATH/$GIT_PATH/share/git-core/templates" # prevent template warning in git
export GIT_EXEC_PATH="$RESOURCEPATH/$GIT_PATH/libexec/git-core" # force git to use resouces in app insted of in /usr/local


# CWD=$PWD # works when run-mbed-cli.py calls this scipt directly
export MBED_INSTALLER_VERSION="$MBED_INSTALLER_VERSION"
echo "MBED installer version is $MBED_INSTALLER_VERSION"
CWD=$RESOURCEPATH # this is a hack to get around $PWD not directing to inside the .app
echo "CWD is $CWD"
MBED_CLI_PATH="$CWD/$GCC_PATH:$CWD/$PYTHON_PATH:$CWD/$MBED_BINS:$CWD/$GIT_PATH"
export MBED_CLI_PATH=$MBED_CLI_PATH
export GCC_ARM_PATH=$"$CWD/$GCC_PATH" # override for mbed-cli, ensure we overridethe user local config
echo "MBED_CLI_PATH is $MBED_CLI_PATH"
export PYTHONPATH="$PYTHONPATH:$CWD/lib/python2.7" # work around for some older versions not finding packages
echo "PYTHONPATH is $PYTHONPATH"
export PATH="$MBED_CLI_PATH:$PATH"
echo "PATH is $PATH"

#Make it pretty
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1='(mbed-clii) \W \\$'
PS1='\[\033[36m\](mbed-cli)\[\033[m\] \[\033[32m\]\w\[\033[m\] \\$ '

# open --wait-apps --new --fresh -a /Applications/Utilities/Terminal.app 
# open --wait-apps --new --fresh -a /Applications/Utilities/Terminal.app test.sh

# step into python virtual environment
# source $RESOURCEPATH/venv/bin/activate

clear && printf '\e[3J' # clear screen and scrollback, comment out this line to see comment echo's
bash


