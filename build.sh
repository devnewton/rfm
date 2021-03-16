#!/usr/bin/sh
composer install
composer exec daux generate
apack rfm.tar.gz static
