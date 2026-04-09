// GitMarket Project

package core

import (
    "embed"
    "path"
    "io/fs"
)

//go:embed collections/*
var clFS embed.FS

func IsValidPackage(name string) bool {
    if name == "" {
        return false
    }

    path := path.Join(
        "collections", name,
    )

    _, err := fs.Stat(clFS, path)
    return err == nil
}

// Copyright (c) 2026 Zeronetsec