import subprocess
from threading import Timer
import signal
import time
import threading
from PyQt5.QtWidgets import *

class Bash():

    def __init__(self):
        self.is_timeout = False
        self.inter_time = 0.1
        self.oldout = ""
        self.olderr = ""

    def timeout_callback(self,p):
        print('exe time out call back')
        try:
            p.kill()
            p.terminate()
        # os.killpg(p.pid, signal.SIGKILL)
        except Exception as error:
            print("---> ",error)
    def flush(self,stdout,stderr):
        # print("flush")
        stdout.flush()
        stderr.flush()
        self.timer = threading.Timer(self.inter_time, self.flush, [stdout,stderr])
        self.timer.start()

    def excute(self,shfile,showinfo=True,timeout=1000000):

        stdout = open('stdout.log', 'wb')
        stderr = open('stdout.log', 'wb')
        cmd = ['bash', shfile]
        self.process = subprocess.Popen(cmd, stdout=stdout.fileno(), stderr=stderr.fileno())

        if showinfo:
            self.timer = threading.Timer(self.inter_time, self.flush, [stdout,stderr])
            self.timer.start()

            self.show_info()

        # stdout, stderr = self.process.communicate()
        # print(self.process.returncode)
        # print("进程ID： " ,self.process.pid)
        # print(stdout.decode('utf-8'), stderr.decode('utf-8'))

        # my_timer = Timer(timeout, self.timeout_callback, [self.process])
        # my_timer.start()
        #
        # try:
        #     print("start to count timeout; timeout set to be %d \n" % (timeout,))
        #     self.process.wait()
        # finally:
        #     my_timer.cancel()
        #     self.process.stdout.flush()
        #     self.process.stderr.flush()
        #     self.process.stdout.close()
        #     self.process.stderr.close()

    def excutecmd(self,cmd,timeout=1000000):
        stdout = open('stdout.log', 'wb')
        stderr = open('stdout.log', 'wb')#open('stderr.log', 'wb')
        # cmd = ['bash', shfile]
        self.process = subprocess.Popen(cmd, shell=True, stdout=stdout.fileno(), stderr=stderr.fileno())
        self.timer = threading.Timer(self.inter_time, self.flush, [stdout,stderr])
        self.timer.start()

        self.show_info()

    def show_interval(self):
        pe = subprocess.Popen("tail -n 1 stdout.log", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, stderr = pe.communicate()
        out , err = stdout.decode('utf-8'), stderr.decode('utf-8')
        out = out.strip()
        err = err.strip()
        if len(out)>1 and out!=self.oldout:
            self.oldout = out
            print(out)
        if len(err)>1 and err!=self.olderr:
            self.olderr = err
            print(err)

        timer = threading.Timer(self.inter_time, self.show_interval)
        timer.start()

    def show_info(self):
        timer = threading.Timer(self.inter_time, self.show_interval)
        timer.start()

    def kill(self):
        try:
            # self.process.kill()
            # self.process.terminate()
            subprocess.Popen("kill -9 "+str(self.process.pid), shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        # os.killpg(p.pid, signal.SIGKILL)
        except Exception as error:
            print('-------> bash process kille failed.')
            print(error)
        print('+++++++> bash process killed.')