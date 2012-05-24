configure permission of all folders and files according to drupal standard

copy druperm folder to root folder (www) where your site folder resides and make druperm.sh executable (chmod 755 druperm.sh)

open terminal and open druperm folder which is residing in root folder (cd /var/www/druperm) and type
sudo ./druperm.sh [drupal-installation-name]
eg
  sudo ./druperm.sh myfirstsite
