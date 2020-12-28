#!/bin/sh

set -e -x

if [ ! -d vendor/bundle ]
then
    bundle install --path vendor/bundle
fi

port=4000

if [ "$1" = "-i" ]
then
    xdg-open "http://localhost:${port}"
    bundle exec jekyll serve \
	   --watch \
	   --drafts \
	   --future \
	   --livereload \
	   --incremental \
	   --strict_front_matter \
	   -P "${port}"
fi

if [ "$1" = "-p" ]
then
    JEKYLL_ENV="production" bundle exec jekyll build
    xdg-open "http://localhost:${port}"
    python3 -m http.server --directory "_site" "${port}"
fi

if [ -z "$1" ]
then
	mkdir -p _site
    cd _site
    if [ ! -d .git/ ]
    then
	git init .
	git remote add origin git@github.com:charmoniumQ/charmoniumQ.github.io.git
	git pull origin master
    fi
    cd ..

    JEKYLL_ENV="production" bundle exec jekyll build

    # if [ -n "$(git status --porcelain)" ]
    # then
	# git commit
    # fi


    if [ -n "$(git rev-list origin/master...master)" ]
    then
	git push
    fi


    commit=$(git rev-parse HEAD)

    cd _site
    touch .nojekyll
    message="generated $(date +%Y-%M-%d) from https://github.com/charmoniumQ/blog-content/commit/${commit}"
    echo "${message}"
    git add -A
    git commit -m "${message}"
    git push origin master
    cd ..
fi
