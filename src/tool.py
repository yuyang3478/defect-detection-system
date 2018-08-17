import os
import time
import subprocess
from threading import Timer
import signal
import pwd


def getAbsolutePath(path):
    return os.path.join(pwd.getpwuid(os.getuid()).pw_dir, path)