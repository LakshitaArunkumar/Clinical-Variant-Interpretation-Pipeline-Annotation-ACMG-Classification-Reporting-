#y= os.system('java -jar {SIFT_PATH}/SIFT4G_Annotator.jar -c -i {file_path}{files} -d {SIFT_PATH}/GRCh37.74 -r {file_path}'.format(file_path='/home/ubuntu/clinical_reporting/s3/input_files/',files=file,SIFT_PATH=SIFT_PATHS))
 
#.format(file_path='/home/ubuntu/clinical_reporting/s3/input_files/',files=file,SIFT_PATH=SIFT_PATHS))
echo $(date)
echo 'SIFT_4G_INSTALL_PATH :',$1
echo 'USER_INPUT_FOLDER_PATH :',$2
echo 'input_file :',$3
echo 'TEMP_FOLDER_PATH:',$4
echo 'SIFT4G_annotation_file :',$5
echo 'java -jar $1/SIFT4G_Annotator.jar -c -i $2$3 -d $1/GRCh38.83.chr -r $2'
#java -jar $1/SIFT4G_Annotator.jar -c -i $2$3 -d $1/GRCh37.74 -r $2
java -jar $1/SIFT4G_Annotator.jar -c -i $2$3 -d $1/GRCh38.83.chr -r $4
echo $5
cp $5 $2
echo $(date)