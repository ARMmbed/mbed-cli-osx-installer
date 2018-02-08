import subprocess

# open Terminal and call run-mbed-cli.sh
subprocess.call(
    ["/usr/bin/open", "-W", "-n", "--fresh","-a", "/Applications/Utilities/Terminal.app", "run-mbed-cli.sh"]
    )

# # call shell script that calls terminal
# subprocess.call(
#     ["/bin/sh","/Users/ausbla01/mbed/mbed-cli-osx-installer/run-mbed-cli.sh"]
#     )
