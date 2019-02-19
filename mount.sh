#!/usr/bin/env sh

if [ ! -f .env ]; then
   cp .env.dist .env
fi

echo "Installing composer packages";
composer install;


echo "Installing yarn packages";
yarn;
echo "Building assets";
yarn build;
#Ensure that mysql started
dockerize -wait tcp://mysql:3306 -timeout 120s;

echo "Running migrations";
bin/console doctrine:migrations:migrate;
