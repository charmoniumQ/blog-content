#!/bin/sh

bundle exec jekyll serve --watch --drafts --future --livereload --incremental

# host=samgrayson.me
# droppath=/home/sam/tmp/
# serverpath=/srv/samgrayson.me

# cd `dirname $0`/blog-content

# bundle exec jekyll build

# rsync --checksum \
# 	  --recursive \
# 	  --verbose \
# 	  --compress \
# 	  --delete \
# 	  --progress \
# 	  --info=progress2 \
# 	  _site \
# 	  $host:$droppath

# ssh $host "sudo cp -R $droppath/_site/* $serverpath"

# #rm -rf _site
