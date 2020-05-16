#! /bin/bash
date=`date +%d%m%Y`
for i in `ls *.log.1`
do
j=`echo $i | awk -F. '{print $1}'`; 
 k=`echo $j-$(date "+%d%m%Y.log")`;

echo $k;
mv $i $k 
done
