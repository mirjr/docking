#!/bin/bash

for l in ./sdf/*.sdf; do
        b=`basename $l .sdf`
        mkdir -p ./pdb
        obabel -isdf $l -opdb -O ./pdb/${b}.pdb -m
done
