// GitMarket Project

package utils

import (
    "fmt"
    "gitmarket/color"
)

func List() {
    packages, err := loadPackages()
    if err != nil {
        fmt.Printf(
            "%s[!] %sError: %s%v%s\n",
            color.R, color.N, color.GG, err, color.N,
        )
        return
    }

    for _, pkg := range packages {
        fmt.Printf(
            "%s%s%s/%s%s%s\n",
            color.GG, pkg.Name, color.WW, color.BB, pkg.Homepage, color.N,
        )
    }
}

// Copyright (c) 2026 Zeronetsec