#!/usr/bin/env bash

REPO_ZIP_URL="https://github.com/composer/composer/archive/refs/heads/main.zip"

curl -L "$REPO_ZIP_URL" -o /tmp/composer.zip
unzip /tmp/composer.zip -d /tmp

rm -rf ./src/en/*
mv /tmp/composer-main/doc/* ./src/en/

rm -rf /tmp/composer-main/ /tmp/composer.zip

echo 'done.'

