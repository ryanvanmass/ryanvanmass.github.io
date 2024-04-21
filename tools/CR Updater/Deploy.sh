#!/bin/bash
git clone https://github.com/ryanvanmass/ryanvanmass.github.io /site

cd /site

bundle exec jekyll build --config _config.yml -d /Temp

rm -rf /mnt/*

cp -r /Temp/* /mnt