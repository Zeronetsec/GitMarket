#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/sa7mon/S3Scanner' \
    "${GMOPT}/s3scanner"

cd "${GMOPT}/s3scanner"
command go mod tidy
command go build -v -o "${GMBIN}/s3scanner"
cd

# Copyright (c) 2026 Zeronetsec