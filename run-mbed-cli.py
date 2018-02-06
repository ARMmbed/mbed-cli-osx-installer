
# import os
# os.spawnl(os.P_WAIT, 'open --fresh -a open /Applications/Utilities/Terminal.app/Contents/MacOS/Terminal')

import subprocess

subprocess.call(
    ["/usr/bin/open", "-W", "-n", "--fresh","-a", "/Applications/Utilities/Terminal.app"]
    )