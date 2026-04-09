// GitMarket Project

package core

import (
    "embed"
    "fmt"
    "strings"
    "encoding/json"
    "gitmarket/utils/color"
)

//go:embed collections/*/metadata.json
var packageData embed.FS

func Search(query string) {
    query = strings.ToLower(query)

    entries, err := packageData.ReadDir("collections")
    if err != nil {
        fmt.Printf(
            "%s[!] %sFailed read collections!\n",
            color.R, color.N,
        )
        return
    }

    found := false

    for _, entry := range entries {
        metaPath := "collections/" + entry.Name() + "/metadata.json"

        data, err := packageData.ReadFile(metaPath)
        if err != nil {
            continue
        }

        var pkg Metadata

        err = json.Unmarshal(data, &pkg)
        if err != nil {
            continue
        }

        if strings.Contains(strings.ToLower(pkg.Name), query) ||
            strings.Contains(strings.ToLower(pkg.Description), query) {

            fmt.Printf(
                "%s%s%s/%s%s%s\n",
                color.GG, pkg.Name, color.WW, color.BB, pkg.Homepage, color.N,
            )

            fmt.Printf(
                "    %s└── %s%s%s\n",
                color.DG, color.WW, pkg.Description, color.N,
            )

            fmt.Println()
            found = true
        }
    }

    if !found {
        fmt.Printf(
            "%s[!] %sNo packages found for: %s%s%s\n",
            color.R, color.N, color.GG, query, color.N,
        )
    }
}

// Copyright (c) 2026 Zeronetsec