#!/bin/sh


jekyll build

rsync --checksum \
	  --recursive \
	  --verbose \
	  --compress \
	  --delete \
	  _site \
	  admin@samgrayson.me:jekyll/

ssh admin@samgrayson.me "sudo cp -R /home/admin/jekyll/_site/* /var/www/html"
