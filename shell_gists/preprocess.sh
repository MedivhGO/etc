#! /bin/bash

grep -Eo ".*'\((.*)]'.*" testdata.txt | sed 's/^[ ]*//g'