# RNA-Sequencing
I tried with making code in note++ and converted the file to unix mode, and then save it as wsl in Linux, and then simply run the code using bash filename.sh. the file of note++ should be save in .sh. 
some of the imp code: 
# Step 1 - Create directories
mkdir -p sorted_BAM counts

# Step 2 - Check your files
ls
ls mapped_SAM/

# Step 3 - Check memory
free -h

# Step 4 - Run the script
bash ActivityofRNAseq.sh

# Step 5 - Check output files
ls sorted_BAM/
ls counts/

# Step 6 - View count results
cat counts/SAMPLE1.count.txt

pwd, cd, cd .., 
