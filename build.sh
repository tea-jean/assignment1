#!/bin/sh
mkdir -p dist

cp ./dreamdog.rb ./dist
cp ./methods.rb ./dist
cp ./test.rb ./dist
cp ./tty-prompt.rb ./dist
cp ./colorize_demo.rb ./dist
cp ./artii.rb /dist

gem install tty-prompt
gem install colorize 
gem install artii 