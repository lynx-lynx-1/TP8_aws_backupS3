#!/bin/bash

#on zip les fichiers
zip -r backup.zip /home/ec2-user/lynx.txt /home/ec2-user/lynx2.txt

#on l'envoie à amazon S3
aws s3 mv /home/ec2-user/backup.zip s3://mycohortebucket/backup.zip

echo "Backup done at $(date)"
