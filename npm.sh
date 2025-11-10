#!/usr/bin/env bash
if [[ "$1" != "publish" ]]; then
  exit 0
fi
mv miniz.c miniz.c.bak
mv miniz.h miniz.h.bak
mkdir tmp
curl -L -o tmp/miniz.zip "https://github.com/richgel999/miniz/releases/download/3.1.0/miniz-3.1.0.zip"
unzip -o tmp/miniz.zip -d tmp
mv tmp/miniz.c .
mv tmp/miniz.h .
rm -rf tmp
npm publish
rm miniz.c miniz.h
mv miniz.c.bak miniz.c
mv miniz.h.bak miniz.h
