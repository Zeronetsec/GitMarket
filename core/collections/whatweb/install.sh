#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/whatweb" ]]; then
    command rm -rfv "${GMOPT}/whatweb"
fi

if [[ -x "${GMBIN}/whatweb" ]]; then
    command rm -fv "${GMBIN}/whatweb"
fi

command git clone --depth 1 \
    'https://github.com/urbanadventurer/WhatWeb' \
    "${GMOPT}/whatweb"

cd "${GMOPT}/whatweb"
command bundle install
command chmod +x -Rv "${GMOPT}/whatweb"
command ln -sfv \
    "${GMOPT}/whatweb/whatweb" \
    "${GMBIN}/whatweb"
cd

# Copyright (c) 2026 Zeronetsec