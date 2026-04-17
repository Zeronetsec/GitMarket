#!/usr/bin/env bash
# GitMarket Project

command mkdir -pv "${GMOPT}/apktool"
command wget \
    'https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool' \
    -O "${GMOPT}/apktool/apktool"

command wget \
    'https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.10.0.jar' \
    -O "${GMOPT}/apktool/apktool.jar"

command chmod +x -Rv "${GMOPT}/apktool"
command sed -i \
    "s|libdir=.*|libdir=\"${GMOPT}/apktool\"|g" \
    "${GMOPT}/apktool/apktool"

command ln -sfv \
    "${GMOPT}/apktool/apktool" \
    "${GMBIN}/apktool"

# Copyright (c) 2026 Zeronetsec