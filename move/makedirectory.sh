#! /bin/bash -x


for filename in `ls *.txt`
do
foldername=`echo $filename | awk -F. '{print $1}'`;
mkdir $foldername;
echo "folder name created with filenames" $foldername;
mv  $filename  $foldername
echo $filename "is moved to" $foldername; 
done

