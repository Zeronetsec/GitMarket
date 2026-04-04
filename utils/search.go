// GitMarket Project

package utils

import (
    "fmt"
    "strings"
    "gitmarket/color"
)

func Search(query string) {
    packages, err := loadPackages()
    if err != nil {
        fmt.Printf(
            "%s[!] %sError: %s%v%s\n",
            color.R, color.N, color.GG, err, color.N,
        )
        return
    }

    query = strings.ToLower(query)

    for _, pkg := range packages {
        if strings.Contains(
            strings.ToLower(pkg.Name), query,
        ) || strings.Contains(
            strings.ToLower(pkg.Description), query,
        ) {
            fmt.Printf(
                "%s%s%s/%s%s%s\n",
                color.GG, pkg.Name, color.WW, color.BB, pkg.Homepage, color.N,
            )

            fmt.Printf(
                "    %s├── %smirror: %s%s%s\n",
                color.DG, color.WW, color.YY, pkg.Mirror, color.N,
            )

            fmt.Printf(
                "    %s└── %s%s%s\n",
                color.DG, color.WW, pkg.Description, color.N,
            )

            fmt.Println()
        }
    }
}

// Copyright (c) 2026 Zeronetsec