#!/bin/bash

for l in ./pdb/*.pdb; do
        b=`basename $l .pdb`
	mkdir -p ./pdbqt
        prepare_ligand -l $l -o ./pdbqt/${b}.pdbqt
done
