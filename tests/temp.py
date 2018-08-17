import subprocess
cmd = ['bash', 'confi.sh']
sub = subprocess.Popen(cmd,  stdout=subprocess.PIPE, stderr=subprocess.PIPE)
stdout, stderr = sub.communicate()
exit_code = sub.returncode
print(exit_code)
print(stdout.decode('utf-8'), stderr.decode('utf-8'))

sub.stdout.close()
sub.stderr.close()