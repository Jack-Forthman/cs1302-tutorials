#!/bin/bash

if [ ! -d "cs1302-javadoc" ]; then
  git clone --depth 1 --no-checkout https://github.com/cs1302uga/cs1302-tutorials.git cs1302-javadoc
  cd cs1302-javadoc
  git checkout master -- javadoc
  rm -f javadoc/setup.sh
  mv javadoc/* ./
  rm -rf javadoc
  rm -rf .git
  mkdir bin doc
  echo "subdirectory cs1302-javadoc successfully created"
else
  >&2 echo "subdirectory cs1302-javadoc already exists"
fi  
