#! /bin/bash -x


for filename in `ls abc.log.1`
do
fname1=`echo $filename | awk -F. '{print $1}'`;
fname2=`echo $filename | awk -F. '{print $2}'`;
DATE=`date +%d%m%Y`;

 
new=`echo $fname1-$DATE.${fname2}` ;
echo "filename changed to" $new;
done
