#!/bin/bash

workDir=~/compute/Cornucopia
scriptDir=${workDir}/code
slurmDir=${workDir}/derivatives/Slurm_out
time=`date '+%Y_%m_%d-%H_%M_%S'`
outDir=${slurmDir}/dcm2nii_${time}

mkdir -p $outDir


cd ~/compute/FruitScans

for i in sub*; do
	if [ ! -f ${workDir}/${i}/anat/${i}_ses-Cornucopia_T1w.nii.gz ]; then

	    sbatch \
	    -o ${outDir}/output_${i}.txt \
	    -e ${outDir}/error_${i}.txt \
	    ${scriptDir}/job_dcm2nii.sh $i

	    sleep 1
	fi
done