#!/usr/bin/env bash
# TODO: this is sooooo hacky, but neither npm link nor a normal ln -s are working

for filename in node_modules/pouchdb-mapreduce/node_modules/pouchdb-abstract-mapreduce/*; do 
  ln -sf ../../../../`echo $filename | sed 's/node_modules\/pouchdb-mapreduce\/node_modules\/pouchdb-abstract-mapreduce\///g'` $filename;
done
