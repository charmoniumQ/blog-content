#!/bin/sh

if [ ! -d vendor/bundle ]
then
    bundle install --path vendor/bundle
fi

#bundle exec jekyll serve --watch --drafts --future --livereload --incremental --strict_front_matter

bundle exec jekyll build

cd _site
if [ ! -d .git/ ]
then
    git init
    git remote add origin git@github.com:charmoniumQ/charmoniumQ.github.io.git
    touch .nojekyll
fi
message=https://github.com/charmoniumQ/blog-content/commit/$(git rev-parse HEAD)
git commit -am "${message}"
git push origin master

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
