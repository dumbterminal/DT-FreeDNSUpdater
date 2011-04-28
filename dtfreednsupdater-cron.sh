#!/bin/bash
# Cron script to run myfreednsupdater
# by: Mike Redd

## Uncomment to use
# Daily
DAILY="0 0 * * * /usr/bin/dtfreednsupdater"

## Weekly
WEEKLY="0 0 * * 0 /usr/bin/dtfreednsupdater"

## Monthly
MONTHLY="0 0 1 * * /usr/bin/dtfreednsupdater"

CRONTIME="$1"

if [ "$CRONTIME" = "daily" ];then
    crontab -l; echo -e "$DAILY" | crontab -
elif [ "$CRONTIME" = "weekly" ];then
    crontab -l; echo -e "$WEEKLY" | crontab -
elif [ "$CRONTIME" = "monthly" ];then
    crontab -l; echo -e "$MONTHLY" | crontab -
else
    echo -e "DT FreeDNS Updater Cron Script"
    echo -e "choices are - daily, weekly, and monthly."
    echo -e ""
fi

