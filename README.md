# What is this
This is a single click installer for mbed CLI on OSX. If you want the installer please see the Releases page for the latest download link. 
Included in the installer is the latest stable version of all tools required to develop in the mbed Ecosystem with mbed CLI. 
- Python 2.7.x
- GCC ARM compiler 
- mbed CLI
- mbedls
- mbed-greentea
- mbed-host-tests
- any other relevant mbed python utilities

## How to use
Download the .dmg file, open it. Copy the app to your applications folder. Run application from your applications folder. 

## How does it work
When you run the app a Terminal is opened with modified local session variables that link to the versions of python, gcc compiler and mbed tools included in the installer.

## Why?
Because we want something that 'just works' for users in a consistent, reproducable way.

## But I like installing my tools myself
Cool, you can do that too. See the instructions [here](TODO) for how to install all the tools individually on your system.

## Whats next? 
Go build awesome.  


--------

# How to Build
1) Update all dependencies in repo (GCC, Python Eggs, ...etc)
	- For compiler updates, unzip the folder into the gcc folder, then modify the setup.py and run-mbed-cli.sh files config section to trace the new path
2) Run the command 'python setup.py py2app'
3) The app is now in `dist/MBED_CLI.app`


--------
# Help, things have gone quite wrong
Right, here are some suggestions
1) `chmod 777 run-mbed-cli.sh` - do this because Terminal.app is finicky and this helps sometimes
2) 


