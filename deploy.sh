#!/bin/sh

cd `dirname $0`
cd blog-content

jekyll build

rsync --checksum \
	  --recursive \
	  --verbose \
	  --compress \
	  --delete \
	  _site \
	  admin@samgrayson.me:jekyll/

ssh admin@samgrayson.me "sudo cp -R /home/admin/jekyll/_site/* /var/www/html"

rm -rf _site
