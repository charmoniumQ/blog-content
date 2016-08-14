#!/bin/sh

cd `dirname $0`/blog-content

bundle exec jekyll build

rsync --checksum \
	  --recursive \
	  --verbose \
	  --compress \
	  --delete \
	  --progress \
	  --info=progress2 \
	  _site \
	  admin@samgrayson.me:jekyll/

ssh admin@samgrayson.me "sudo cp -R /home/admin/jekyll/_site/* /var/www/html"

rm -rf _site
