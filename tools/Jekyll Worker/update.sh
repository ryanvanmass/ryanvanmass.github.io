git clone https://github.com/ryanvanmass/ryanvanmass.github.io /source
cd /source

bundle exec jekyll build

rm -rf /target/*
cp -rf _site/* /target
