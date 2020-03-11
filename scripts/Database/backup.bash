#!/bin/bash 
date=$(date +%Y%m%d-%H-%M) 
filename="backup-$date.sql" 
cockroach dump bf --insecure > /home/ubuntu/backups/"$filename"
scp "$filename" ubuntu@192.168.132.83:/backup
