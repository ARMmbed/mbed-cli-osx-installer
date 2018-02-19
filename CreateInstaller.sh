# This script creates the installer, do not try to create it manually. If any packages need to be changed then change them here

#Config Section
MBED_CLI_VERSION="1.4.0"
MBED_LS_VERSION="1.3.7"
MBED_GREENTEA_VERSION="1.3.3"
MBED_HOST_TEST_VERSION="1.3.1"

# ------ DO NOT MODIFY BELOW HERE -----------

# # create Virtual Environment
# python -m virtualenv ./venv
# # Make the links relative instead of sym linked
# python -m virtualenv --relocatable ./venv
# #Enter Virtual Environment
# source ./venv/bin/activate

#Install Packages
pip install -U mbed-cli==MBED_CLI_VERSION
pip install -U mbed-ls==MBED_LS_VERSION
pip install -U mbed-greentea==MBED_GREENTEA_VERSION
pip install -U mbed-host-tests==MBED_HOST_TEST_VERSION
pip install -U pyserial
pip install -U elftools
pip install -U fuzzywuzzy

# #exit Virtual Env
#  deactivate

# build .APP
chmod 777 ./run-mbed-cli.sh
python setup.py py2app
