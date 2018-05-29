#!/bin/bash

# called by Travis CI
ls -al
git clone --branch="$EE_BRANCH" https://github.com/mrrobot47/easyengine.git
cd easyengine
pwd
ls -al
composer install
php -dphar.readonly=0 ./utils/make-phar.php easyengine.phar --quite  > /dev/null
php easyengine.phar cli version