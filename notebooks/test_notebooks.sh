#!/bin/bash -e
jupyter nbconvert --to script example-notebook.ipynb
octave-cli example-notebook.m
status=$?
[ $status -eq 0 ] && echo "$cmd command was successful" || echo "$cmd failed"
exit $status
