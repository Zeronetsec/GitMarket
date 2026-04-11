#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/nikto" ]]; then
    command rm -rfv "${GMOPT}/nikto"
fi

if [[ -x "${GMBIN}/nikto" ]]; then
    command rm -fv "${GMBIN}/nikto"
fi

command git clone --depth 1 \
    'https://github.com/sullo/nikto' \
    "${GMOPT}/nikto"

command cpan install JSON XML::Writer
command chmod +x -Rv "${GMOPT}/nikto"
command ln -sfv \
    "${GMOPT}/nikto/program/nikto.pl" \
    "${GMBIN}/nikto"

# Copyright (c) 2026 Zeronetsec