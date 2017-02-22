#!/usr/bin/env bash
#pep8 tells where to change
sudo pip install pep8
pep8 python_file.py

#autopep8 as it says
sudo pip install autopep8
autopep8 --in-place python_file.py