#! /usr/bin/bash

for f in ./ligands/ligand_*.pdbqt; do
	b=`basename $f .pdbqt`
	echo Proccessing ligand $b
	mkdir -p ./dist/$b
	vina --config conf.txt --ligand $f --out ./dist/${b}/out.pdbqt --write_maps ./dist/${b}/out_map.map --cpu=3
done
