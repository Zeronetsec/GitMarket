#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -pv "${GMOPT}"
fi

if [[ -d "${GMOPT}/rclone" ]]; then
    command rm -rfv "${GMOPT}/rclone"
fi

if [[ -x "${GMBIN}/rclone" ]]; then
    command rm -fv "${GMBIN}/rclone"
fi

command git clone --depth 1 \
    'https://github.com/rclone/rclone' \
    "${GMOPT}/rclone"

cd "${GMOPT}/rclone"
command go mod tidy
command go build -v -o "${GMBIN}/rclone"
cd

# Copyright (c) 2026 Zeronetsec