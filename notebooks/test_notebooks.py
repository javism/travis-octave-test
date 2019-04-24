import subprocess

cmd = ["jupyter","nbconvert", "--to", "script", "example-notebook.ipynb"]
returncode = subprocess.call(cmd)

print("returncode:" + str(returncode))

if returncode != 0:
	exit(returncode)

cmd = ["octave-cli", "example_notebook.m"]
returncode = subprocess.call(cmd)
print("returncode:" + str(returncode))

exit(returncode)
