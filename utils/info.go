// GitMarket Project

package utils

import (
    "fmt"
    "strings"
    "gitmarket/color"
)

func Info(name string) {
    packages, err := loadPackages()
    if err != nil {
        fmt.Printf(
            "%s[!] %sError: %s%v%s\n",
            color.R, color.N, color.GG, err, color.N,
        )
        return
    }

    for _, pkg := range packages {
        if pkg.Name == name {
            fmt.Printf(
                "%sTool: %s%s%s\n",
                color.N, color.GG, pkg.Name, color.N,
            )

            fmt.Printf(
                "%sHomepage: %s%s%s\n",
                color.N, color.GG, pkg.Homepage, color.N,
            )

            fmt.Printf(
                "%sMirror: %s%s%s\n",
                color.N, color.GG, pkg.Mirror, color.N,
            )

            fmt.Printf(
                "%sDescription: %s%s%s\n",
                color.N, color.GG, pkg.Description, color.N,
            )

            if len(pkg.Dependency) > 0 && pkg.Dependency[0] != "" {
                var deps []string
                for _, dep := range pkg.Dependency {
                    if strings.TrimSpace(dep) == "" {
                        continue
                    }
                    deps = append(deps, dep)
                }

                fmt.Printf(
                    "%sDependency: %s%s%s\n",
                    color.N, color.GG, strings.Join(deps, ", "), color.N,
                )
            } else {
                fmt.Printf(
                    "%sDependency: %snone%s\n",
                    color.N, color.GG, color.N,
                )
            }
            return
        }
    }

    fmt.Printf(
        "%s[!] %sPackage: %s%s %snot found!\n",
        color.R, color.N, color.GG, name, color.N,
    )
}

// Copyright (c) 2026 Zeronetsec