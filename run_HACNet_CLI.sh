#!/bin/bash

dir_list=$(ls /mnt/scratch/jeaves/CASF-2016/coreset)

for item in $dir_list; do
    rec_fpath=/mnt/scratch/jeaves/CASF-2016/coreset/${item}/${item}_protein.pdb
    lig_mol2_fpath=/mnt/scratch/jeaves/CASF-2016/coreset/${item}/${item}_ligand.mol2
    out_fpath=/mnt/scratch/jeaves/CASF-2016/coreset/${item}/pred.csv


    python3 HACNet_CLI.py \
        --protein_pdb_fpath $rec_fpath \
        --ligand_mol2_fpath $lig_mol2_fpath \
        --log $out_fpath
done

