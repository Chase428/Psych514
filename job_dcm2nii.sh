#!/bin/bash

#SBATCH --time=00:15:00 # walltime
#SBATCH --ntasks=1  # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=4gb   # memory per CPU core
#SBATCH -J "dcm2nii"    # job name


# set reference pathways
dicom_dir=~/compute/sub-Fruit/dicom

exp_dir=~/compute/TestExperiment/sub-fruit
anat_dir=${exp_dir}/anat
dwi_dir=${exp_dir}/dwi

# set output string
name_string=sub-Fruit_ses-first

# make output directories
mkdir -p $anat_dir $dwi_dir

# construct T1 NIfTI files.
dcm2niix -b y -ba y -z y -o $anat_dir -f ${name_string}_T1w ${dicom_dir}/t1*/

# T2
dcm2niix -b y -ba y -z y -o $anat_dir -f ${name_string}_T2w ${dicom_dir}/t2*/

#DTI
dcm2niix -b y -ba y -z y -o $dwi_dir -f ${name_string}_dwi ${dicom_dir}/dti*/