// GitMarket Project

package core

import (
    "fmt"
    "os"
    "path/filepath"
    "gitmarket/utils/color"
)

func EnsureDirs() {
    root := GMRoot()

    dirs := []string{
        filepath.Join(root, "opt"),
        filepath.Join(root, "bin"),
        filepath.Join(root, "tmp"),
    }

    for _, dir := range dirs {
        err := os.MkdirAll(dir, 0755)
        if err != nil {
            fmt.Printf(
                "%s[!] %sFailed create directory: %s%s %s(%s%v%s)%s\n",
                color.R, color.N, color.GG, dir, color.DG, color.GG, err, color.DG, color.N,
            )
            continue
        }

        fmt.Printf(
            "%s[+] %sEnsure directory: %s%s%s\n",
            color.GG, color.N, color.GG, dir, color.N,
        )
    }
}

// Copyright (c) 2026 Zeronetsec