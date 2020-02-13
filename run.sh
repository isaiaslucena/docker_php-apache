#!/bin/bash -x

if [[ -f "/FIRST_RUN" ]] ; then
	rm -rf /FIRST_RUN
	composer install
fi

service apache2 restart
tail -f /var/log/apache2/error.log