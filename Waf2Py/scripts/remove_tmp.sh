#!/bin/bash

# remove compressed logs files every 2 hour by crontab
# get year
year=$(date|awk {'print $6'})
d=$(date)
cd /home/www-data/waf2py_community/applications/Waf2Py/scripts/
echo "$d - Removing temp files in static/logs" >> /home/www-data/waf2py_community/applications/Waf2Py/scripts/cleaning.log
# remove files
rm /home/www-data/waf2py_community/applications/Waf2Py/static/logs/*.{zip,gz}
echo "Files deleted" >> /home/www-data/waf2py_community/applications/Waf2Py/scripts/cleaning.log
