echo $(date)
echo 'SIFT INSTALLATION PATH :',$1
echo 'SIFT INPUT FILE PATH : ',$2
echo 'SIFT DB PATH :',$3
echo 'TEMP FOLDER PATH : ',$4
echo 'SIFT PROCESS OUTPUT FILE',$5
echo 'SIFT PREDICTIONS FILE',$6

#echo 'Command : perl ',$1'/SIFTINDEL/bin/SIFT_exome_indels.pl -i ',$2 '-c hs37 -d ',$3 '-m 1 -o ',$4 '>', $5'

perl $1/SIFTINDEL/bin/SIFT_exome_indels.pl -i $2 -c hs38 -d $3 -m 1 -o $4 > $5
VAR="$(grep '^indel' $5)"
A="$(echo $VAR| cut -d'.' -f1)"
echo $A
y='_predictions.tsv'

#COPYING FINAL PREDICTIONS FILE 
cp $4/$A/$A$y $6

echo 'Annotation for SIFT indel is complete'
echo $(date)