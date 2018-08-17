import os

try:
    print(os.popen('echo "abc"').read().strip())
except:
    print("exception ")
import subprocess
from threading import Timer
import signal
import time
import threading


# pe = subprocess.Popen("tail -n 200 stderr.log", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
# stdout, stderr = pe.communicate()
# out = stdout.decode('utf-8')
#
# print(stdout.decode('utf-8'), stderr.decode('utf-8'))
pe = subprocess.Popen("kill -9 10096", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
stdout, stderr = pe.communicate()
out = stdout.decode('utf-8')
print(out)
print(stderr.decode('utf-8'))
