#!/bin/bash
alert=90
backup_date=$(date +'%m/%d/%Y %H:%M:%S')
df -H | awk '{print $5 " " $1}' | while read output
do
    #echo "Disk Detail: $output"
    usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
    file_sys=$(echo $output | awk '{print $2}')
    #echo $usage
    if [ $usage -ge $alert ]
    then
        echo "CRITICAL for $file_sys"
    fi
done


# Crontab -e      "For cronjob purposes"
#50 4 * * * echo "this is my first cron job" > /home/ubuntu/test_cron_first.txt (This job runs every day at 4:50 AM)
#* * * * * bash /home/ubuntu/scripts/check_disk.sh >> /home/ubuntu/check_disk.log (This job runs every minute and executes a script, likely the one from your previous image).
