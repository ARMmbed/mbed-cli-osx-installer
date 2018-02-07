import subprocess

# open Terminal
# subprocess.call(
#     ["/usr/bin/open", "-W", "-n", "--fresh","-a", "/Applications/Utilities/Terminal.app"]
#     )

# call shell script that call terminal
subprocess.call(
    ["/bin/sh","/Users/ausbla01/mbed/mbed-cli-osx-installer/run-mbed-cli.sh"]
    )
