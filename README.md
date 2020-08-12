# RADseq
We suggest a simple pipeline that blends de novo RAD-specific pipelines and well-proven generic NGS data toolkits

## Quick start

Instructions to type in a shell

1. [Install](https://docs.conda.io/projects/continuumio-conda/en/latest/user-guide/install/index.html) miniconda3

2. Create conda virtual environment

```
conda create --name radPipe --file spec-file.txt
conda activate radPipe
```
Please note to run `conda activate radPipe` everytime you want to run radPipe

3. Get radPipe 

```
git clone https://github.com/rathmuth/RADseq.git
```

## Running radPipe

To initialize a project, please specify path for ouput directory (OUTDIR) on the snakefile_radPipe. You also need to create config.yaml which specify absolute path of sequencing read files for each samples as well as their corresponding population (see example/config.yaml). 

Before running the pipeline, we suggest to check whether output files can be generated from the inputs, using the `--dryrun` option.

```
snakemake -s radPipe.snakefile --dry-run
```
When actually running the pipeline, you need to specify CPU cores will be used with --cores and path to config.yaml

```
snakemake -s radPipe.snakefile --configfile path/to/config.yaml --cores <num_CPUcores>
```

For testing, you can try run:
```
cd example
snakemake -s radPipe_snakefile --configfile config.yaml --cores 10
```

## Dependencies

- Stacks 2.53
- Bwa 0.7.17

## Other dependencies

- Conda >= 4.8.3
- Python >= 3.7.7
- Snakemake >= 5.20.1

## Other analysis
We estimate SFS using [ANGSD](http://www.popgen.dk/angsd/index.php/ANGSD). Further details can be found in the [wiki](http://www.popgen.dk/angsd/index.php/SFS_Estimation) pages.

## Contributors

- [Rasmus Heller](https://orcid.org/0000-0001-6583-6923)
- [Thorfinn Sand Korneliussen](https://orcid.org/0000-0001-7576-5380)
- [Anders Albrechtsen](https://orcid.org/0000-0001-7306-031X)
- [Genis Garcia Erill](http://orcid.org/0000-0003-3150-1708)
- [Casia Nursyifa](https://orcid.org/0000-0002-7803-9664)

## Zebra RadSeq Data
Rad-Sequencing data for zebra are available at http://popgen.dk/rasmus/radseq/fastq/

## Contact

We encourage you to report any issue you might find using [issue tracker](https://github.com/rathmuth/RADseq/issues). For further enquiries, you can also contact radPipe Dev Team at ????.
