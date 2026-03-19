#!/bin/sh

#cd $HOME/clinical_reporting/s3/installations/dbNSFP/dbNSFP4.3a
#echo $HOME/clinical_reporting/s3/input_files/$1
echo $(date)
echo "dbNSFP_PATH :",$1
echo "USER_INPUT_FOLDER_PATH and the input file :",$2
cd $1
java search_dbNSFP43a  -i $2 -o $2_dbNSFP.tsv -v hg38 -p
echo $(date)
