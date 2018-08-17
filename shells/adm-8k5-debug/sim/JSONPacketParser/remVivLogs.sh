#!/bin/bash

find . -name "*.jou" -type f -delete
find . -name "*.log" -type f -delete
find . -name "*.wdb" -type f -delete
find . -name "*.str" -type f -delete
find . -name "*.pb" -type f -delete
find . -name "xsim.dir" -type d -exec rm -r "{}" +
find . -name ".Xil" -type d -exec rm -r "{}" +