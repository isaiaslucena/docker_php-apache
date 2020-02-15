#!/bin/bash -x

if [[ -f "/FIRST_RUN" ]] ; then
	rm -rf /FIRST_RUN
	sed -i "s/AllowOverride None/AllowOverride All/g" /etc/apache2/apache2.conf
	echo "" >> /etc/apache2/apache2.conf.
	echo "XSendFile on" >> /etc/apache2/apache2.conf
	echo "XSendFilePath /disks" >> /etc/apache2/apache2.conf
	a2enmod rewrite
	composer install
fi

source /etc/apache2/envvars
exec apache2 -D FOREGROUND