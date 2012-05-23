#!/bin/bash
#chagnes permission of files for drupal installation
var="./$1"
chown -R admin:www-data $var
find $var -type d -exec chmod u=rwx,g=rx,o= {} \;
find $var -type f -exec chmod u=rw,g=r,o= {} \;
find $var/sites/default/ -type d -name files -exec chmod ug=rwx,o= '{}' \;
for d in $var/sites/default/files
do
   find $d -type d -exec chmod ug=rwx,o= {} \;
   find $d -type f -exec chmod ug=rw,o= {} \;
done
