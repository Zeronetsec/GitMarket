// GitMarket Project

package core

import (
    "path/filepath"
)

func IsInstalled(name string) bool {
    if name == "" {
        return false
    }

    root := GMRoot()
    optPath := filepath.Join(root, "opt", name)
    binPath := filepath.Join(root, "bin", name)

    if fileExists(optPath) {
        return true
    }

    if fileExists(binPath) {
        return true
    }

    return false
}

// Copyright (c) 2026 Zeronetsec