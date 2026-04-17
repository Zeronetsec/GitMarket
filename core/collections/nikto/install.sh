#!/usr/bin/env bash
# GitMarket Project

cpanmod=(
    "JSON"
    "XML::Writer"
    "Net::SSLeay"
)

command git clone --depth 1 \
    'https://github.com/sullo/nikto' \
    "${GMOPT}/nikto"

command cpan install "${cpanmod[@]}"
command chmod +x -Rv "${GMOPT}/nikto"
command ln -sfv \
    "${GMOPT}/nikto/program/nikto.pl" \
    "${GMBIN}/nikto"

# Copyright (c) 2026 Zeronetsec