// GitMarket Project

package utils

import (
    "os"
    "path/filepath"
)

func PreCheck(name string) bool {
    prefix := os.Getenv("PREFIX")
    if prefix == "" {
        prefix = "/"
    }

    optPath := filepath.Join(prefix, "opt", name)
    binPath := filepath.Join(prefix, "bin", name)

    if _, err := os.Stat(optPath); err == nil {
        return true
    }

    if _, err := os.Stat(binPath); err == nil {
        return true
    }

    return false
}

// Copyright (c) 2026 Zeronetsec