#!/usr/bin/env bash
set -e
TAG="crimson-anchor-gentle-garden"
LIB="rebuilt-wreath.a"
URL="https://github.com/kindcanyon/gojutedugout/releases/download/${TAG}/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
