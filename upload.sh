#!/bin/bash
FILES=./*
for f in $FILES
do
  echo "Uploading $f file..."
  aws s3 cp $f s3://sps.publicsport.net/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
done