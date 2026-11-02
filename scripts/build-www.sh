#!/bin/sh
# 안드로이드 앱에 넣을 웹 파일을 www/ 로 모은다.
set -e
cd "$(dirname "$0")/.."
rm -rf www
mkdir -p www
cp index.html manifest.webmanifest icon.svg icon-192.png icon-512.png www/
