#!/bin/bash --login
#
source .rvmrc
bundle install --path .bundle --without development stage production
bundle exec rake db:migrate
COVERAGE=on LC_CTYPE=en_US.UTF-8 bundle exec rake 
