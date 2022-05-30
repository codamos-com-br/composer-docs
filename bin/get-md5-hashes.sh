#!/usr/bin/env bash

OUTPUT_FILENAME=$1

md5 src/en/**/*.md > $OUTPUT_FILENAME

echo 'done.'

