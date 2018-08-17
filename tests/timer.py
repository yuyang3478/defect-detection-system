import threading
import subprocess

def flush(stdout, stderr):
    print("flush")
    # stdout.flush()
    # stderr.flush()
    timer = threading.Timer(1.0, flush, [stdout, stderr])
    timer.start()
stdout = open('stdout.log', 'wb')
stderr = open('stderr.log', 'wb')
# cmd = ['bash', shfile]
# process = subprocess.Popen(cmd, stdout=stdout.fileno(), stderr=stderr.fileno())
timer = threading.Timer(1.0, flush, [stdout,stderr])
timer.start()