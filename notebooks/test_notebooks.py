import subprocess

subprocess.call(["ls", "-l"])

## command to run - tcp only ##
#cmd = "jupyter nbconvert --to script example-notebook.ipynb" ## run it ##
#result = subprocess.Popen(cmd, shell=True, stderr=subprocess.PIPE)
#text = result.communicate()[0]
#returncode = result.returncode
cmd = ["jupyter","nbconvert", "--to", "script", "example-notebook.ipynb"]
returncode = subprocess.call(cmd)

print("returncode:" + str(returncode))

if returncode != 0:
	exit(returncode)

#cmd = "octave-cli example-notebook.m" ## run it ##
#result = subprocess.Popen(cmd, shell=True, stderr=subprocess.PIPE)
#text = result.communicate()[0]
#returncode = result.returncode

cmd = ["octave-cli", "example-notebook.m"]
returncode = subprocess.call(cmd)
print("returncode:" + str(returncode))

exit(returncode)
