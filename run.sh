#!/bin/bash -x

if [[ -f "/FIRST_RUN" ]] ; then
	rm -rf /FIRST_RUN
	a2enmod rewrite
	composer install
fi

source /etc/apache2/envvars
exec apache2 -D FOREGROUND