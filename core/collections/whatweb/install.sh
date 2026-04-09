#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/whatweb" ]]; then
    command rm -rf "${GMOPT}/whatweb"
fi

if [[ -x "${GMBIN}/whatweb" ]]; then
    command rm -f "${GMBIN}/whatweb"
fi

command git clone --depth 1 \
    'https://github.com/urbanadventurer/WhatWeb' \
    "${GMOPT}/whatweb"

cd "${GMOPT}/whatweb" || exit 1
command bundle install
command ln -sf \
    "${GMOPT}/whatweb/whatweb" \
    "${GMBIN}/whatweb"
cd

# Copyright (c) 2026 Zeronetsec