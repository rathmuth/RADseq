#!/bin/bash

echo ">1" > results/consensus.fa
grep "consensus" results/catalog.tags.tsv | while read linie
do
  echo $linie | cut -d" " -f6 >> results/consensus.fa
  echo "NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN" >> results/consensus.fa
done

