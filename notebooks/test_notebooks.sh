#!/bin/bash -e
jupyter nbconvert --to script example-notebook.ipynb
octave-cli example-notebook.m
status=$?
exit $status
