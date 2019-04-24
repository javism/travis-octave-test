#!/bin/bash -e
jupyter nbconvert --to script example-notebook.ipynb
octave-cli example-notebook.m
#octave-cli example_notebook.m
status=$?
echo 'status'
echo $status
if [ $status -eq 0 ]
then
  echo "ok!!"
  exit $status
else
  echo "error!!" 
  exit $status
fi
