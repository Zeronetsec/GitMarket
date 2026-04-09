#!/usr/bin/env bash
# GitMarket Project

if [[ ! -d "${GMOPT}" ]]; then
    command mkdir -p "${GMOPT}"
fi

if [[ -d "${GMOPT}/rclone" ]]; then
    command rm -rf "${GMOPT}/rclone"
fi

if [[ -x "${GMBIN}/rclone" ]]; then
    command rm -f "${GMBIN}/rclone"
fi

command git clone --depth 1 \
    'https://github.com/rclone/rclone' \
    "${GMOPT}/rclone"

cd "${GMOPT}/rclone" || exit 1
command go mod tidy
command go build -v -o "${GMBIN}/rclone"
cd

# Copyright (c) 2026 Zeronetsec