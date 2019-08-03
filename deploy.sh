#!/bin/sh

set -e -x

if [ ! -d vendor/bundle ]
then
    bundle install --path vendor/bundle
fi

if [ "$1" = "-i" ]
then
    bundle exec jekyll serve --watch --drafts --future --livereload --incremental --strict_front_matter
else

    cd _site
    if [ ! -d .git/ ]
    then
	git init .
	git remote add origin git@github.com:charmoniumQ/charmoniumQ.github.io.git
	git pull origin master
    fi
    cd ..

    bundle exec jekyll build

    commit=$(git rev-parse HEAD)

    cd _site
    touch .nojekyll
    message="generated $(date +%Y-%M-%d) from https://github.com/charmoniumQ/blog-content/commit/${commit}"
    echo "${message}"
    read p
    git add -A
    git commit -m "${message}"
    git push origin master
    cd ..
fi


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
