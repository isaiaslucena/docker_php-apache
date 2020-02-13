#!/bin/bash -x

if [[ -f "/FIRST_RUN" ]] ; then
	rm -rf /FIRST_RUN
	composer install
fi

source /etc/apache2/envvars
exec apache2 -D FOREGROUND