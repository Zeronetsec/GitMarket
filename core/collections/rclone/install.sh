#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/rclone/rclone' \
    "${GMOPT}/rclone"

cd "${GMOPT}/rclone"
command go mod tidy
command go build -v -o "${GMBIN}/rclone"
cd

# Copyright (c) 2026 Zeronetsec