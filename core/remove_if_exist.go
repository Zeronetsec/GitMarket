// GitMarket Project

package core

import (
    "os"
    "fmt"
    "gitmarket/utils/color"
)

func removeIfExist(path string) {
    if _, err := os.Stat(path); err == nil {
        err := os.RemoveAll(path)
        if err != nil {
            fmt.Printf(
                "%s[!] %sFailed remove: %s%s %s(%s%v%s)%s\n",
                color.R, color.N, color.GG, path, color.DG, color.GG, err, color.DG, color.N,
            )
            return
        }

        fmt.Printf(
            "%s[-] %sRemoved: %s%s%s\n",
            color.YY, color.N, color.GG, path, color.N,
        )
    }
}

// Copyright (c) 2026 Zeronetsec