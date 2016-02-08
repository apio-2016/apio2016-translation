#!/bin/bash

# redis-server
sudo apt-get install --force-yes -y --quiet redis-server

# utils
sudo apt-get install --force-yes -y --quiet wget tar curl

# fonts (Ubuntu 14.04+)
sudo apt-get install --force-yes -y --quite fonts-noto

# mathjax 2.5
wget -O mathjax-2.5.zip https://github.com/mathjax/MathJax/archive/v2.5-latest.zip
unzip mathjax-2.5.zip -d public/ && mv public/MathJax-2.5-latest public/mathjax-2.5
rm mathjax-2.5.zip

# codemirror 3.22
wget http://codemirror.net/codemirror-3.22.zip
unzip codemirror-3.22.zip -d public/
rm codemirror-3.22.zip

# phantomjs 1.9.7 x86_64
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2
tar xf phantomjs-1.9.7-linux-x86_64.tar.bz2
sudo cp phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/bin
rm -rf phantomjs-1.9.7-linux-x86_64*

# ruby 2.1 (rvm)
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable --ruby=2.1
echo 'source "$HOME/.rvm/scripts/rvm"' >> "$HOME/.bashrc"
source "$HOME/.rvm/scripts/rvm"
rvm use --default 2.1
gem install bundle

# rubygems & compass assets
bundle install
compass compile
