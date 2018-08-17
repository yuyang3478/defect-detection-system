import subprocess
from threading import Timer
import signal
timeout=100
timeout = 300
is_timeout = False

def timeout_callback(p):
    print('exe time out call back')
    try:
        p.kill()
    # os.killpg(p.pid, signal.SIGKILL)
    except Exception as error:
        print(error)


cmd = ['bash', 'tmp.sh']
p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
stdout, stderr = p.communicate()
print(p.returncode)
print(stdout.decode('utf-8'), stderr.decode('utf-8'))
my_timer = Timer(timeout, timeout_callback, [p])
my_timer.start()
print(p.pid)
try:
    print("start to count timeout; timeout set to be %d \n" % (timeout,))
    p.wait()
finally:
    my_timer.cancel()
    p.stdout.flush()
    p.stderr.flush()
    p.stdout.close()
    p.stderr.close()