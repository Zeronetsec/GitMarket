#!/usr/bin/env bash
# GitMarket Project

if [[ -d "${GMOPT}/apktool" ]]; then
    command rm -rf "${GMOPT}/apktool"
fi

if [[ -x "${GMBIN}/apktool" ]]; then
    command rm -f "${GMBIN}/apktool"
fi

command mkdir -p "${GMOPT}/apktool"
command wget \
    'https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool' \
    -O "${GMOPT}/apktool/apktool"

command wget \
    'https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.10.0.jar' \
    -O "${GMOPT}/apktool/apktool.jar"

command chmod +x "${GMOPT}/apktool/apktool"
command chmod +x "${GMOPT}/apktool/apktool.jar"

command sed -i \
    "s|libdir=.*|libdir=\"${GMOPT}/apktool\"|g" \
    "${GMOPT}/apktool/apktool"

command ln -sf \
    "${GMOPT}/apktool/apktool" \
    "${GMBIN}/apktool"

# Copyright (c) 2026 Zeronetsec