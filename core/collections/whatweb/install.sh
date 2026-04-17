#!/usr/bin/env bash
# GitMarket Project

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