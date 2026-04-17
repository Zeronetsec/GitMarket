// GitMarket Project

package core

import (
    "path/filepath"
)

func CleanTarget(name string) {
    if name == "" || name == "/" {
        return
    }

    root := GMRoot()

    optPath := filepath.Join(root, "opt", name)
    binPath := filepath.Join(root, "bin", name)
    tmpPath := filepath.Join(root, "tmp", name)

    removeIfExist(optPath)
    removeIfExist(binPath)
    removeIfExist(tmpPath)
}

// Copyright (c) 2026 Zeronetsec