# dev-setup-laravel
Setup for laravel environment using php7.2 mysql nginx dnsmasq dhcp composer codesniffer phpmyadmin

Clone repo wherever then cd into folder dev-setup-laravel the run the follwing on command line:

sudo chmod +x setup.sh

then

./setup.sh

May not work for you, does for me and thats what its for, sets up a working environment using php7.2 to develop laravel applications,
after installing then whenever you clone a repo into /var/www, for example test-app, you should be able to go to http://test-app.dev
and find your site working (provided you have done your composer installs etc).

As it installs composer and laravel/laravel also, you should also be able to "composer create-project laravel/laravel applicationname".

Note: due to nature of the nginx conf, lowercase all project folder names in /var/www so that urls are for example http://applicationname.dev.

To access phpmyadmin, use http://applicationname.dev/phpmyadmin

Feel free to contribute to expand this,I want to get it to a full base setup for ubuntu using multiple php versions also
