#!/bin/bash
#working directory: home/mchase11

cd compute/
#working directory: home/mchase11/compute

mkdir BIDS_example

cd BIDS_example
#working directory: home/mchase11/compute/BIDS_example

for i in {1..50}; do
	mkdir sub-$(printf "%03d" $i)
done

for i in {1..50}; do
    subject_dir="sub-$(printf "%03d" $i)"
    mkdir "$subject_dir/anat"
    mkdir "$subject_dir/func"
    echo "$subject_dir" > "$subject_dir/anat/$subject_dir.txt"
    echo "$subject_dir" > "$subject_dir/func/$subject_dir.txt"
done


#Here is what ChatGPT says my BIDS code should be:
cd compute/
# working directory: home/mchase11/compute

mkdir BIDS_example

cd BIDS_example
# working directory: home/mchase11/compute/BIDS_example

for i in {1..50}; do
    subject_dir="sub-$(printf "%03d" $i)"
    mkdir "$subject_dir"
    
    # Create the "anat" directory with specific subdirectories
    mkdir "$subject_dir/anat"
    mkdir "$subject_dir/anat/sub-$(printf "%03d" $i)_T1w"
    
    # Create the "func" directory with specific subdirectories
    mkdir "$subject_dir/func"
    mkdir "$subject_dir/func/sub-$(printf "%03d" $i)_task-rest_bold"
    
    # Create sample data files or use your actual data files here
    touch "$subject_dir/anat/sub-$(printf "%03d" $i)_T1w/sub-$(printf "%03d" $i)_T1w.nii.gz"
    touch "$subject_dir/func/sub-$(printf "%03d" $i)_task-rest_bold/sub-$(printf "%03d" $i)_task-rest_bold.nii.gz"
    
    echo "$subject_dir" > "$subject_dir/anat/sub-$(printf "%03d" $i)_T1w/$subject_dir.txt"
    echo "$subject_dir" > "$subject_dir/func/sub-$(printf "%03d" $i)_task-rest_bold/$subject_dir.txt"
done
