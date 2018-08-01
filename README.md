# What is this
This is a single click installer for Mbed CLI on OS X. If you want the installer please see the Releases page for the latest download link. 
Included in the installer is the latest stable version of all tools required to develop in the Mbed Ecosystem with Mbed CLI. 
- Python 2.7.x
- GNU Arm Embedded Toolchain (GCC)
- Mbed CLI
- mbedls
- mbed-greentea
- mbed-host-tests
- any other relevant Mbed Python utilities

## How to use
Download the .dmg file, open it. Copy the app to your applications folder. Run application from your applications folder. 

## How does it work
When you run the app a Terminal is opened with modified local session variables that link to the versions of Python, the GCC toolchain and Mbed tools included in the installer.

## Why?
Because we want something that "just works" for users in a consistent, reproducable way.

## But I like installing my tools myself
See the instructions [here](TODO) for how to install all the tools individually on your system.

## Whats next? 
Go build awesome.  


--------

# How to Build
1) Update all dependencies in repo (GCC, Python Eggs, ...etc)
	- For compiler updates, unzip the folder into the GCC folder, then modify the setup.py and run-mbed-cli.sh files config section to trace the new path
	- for adding new tools like mbedls and mbed-cli that should have user available calls from the command like `$mbed` you should add them to the `bin` folder. Make sure to modify the shebang to be similar to existing aliases in the bin folder. 
2) Run the command `sudo sh ./CreateInstaller.sh`
3) The app is now in `dist/MBED_CLI.app`


--------
# Help, things have gone quite wrong
Right, here are some suggestions
1) `chmod 777 run-mbed-cli.sh` - do this because Terminal.app is finicky and this helps sometimes
2) Make sure you are building the app with non-system python. Install Python from brew or something. The following command should return false `python -c "import py2app.build_app; print py2app.build_app.is_system()"`
3) Cannot find packages, getting an error like 'UserWarning: No package named mbed-cli' when trying to build. Solution : the site packages found by Py2app does not contain the modules. Try copying things from the Brew site-packages to your system-python site-packages. 


--------
# Planned Updates
- update `CreateInstaller.sh` to install python packages from pip directly to install directory instead of installing to the computer


