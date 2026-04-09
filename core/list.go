// GitMarket Project

package core

import (
    "embed"
    "fmt"
    "encoding/json"
    "path/filepath"
    "gitmarket/utils/color"
)

//go:embed collections/*/metadata.json
var listData embed.FS

func List() {
    entries, err := listData.ReadDir("collections")
    if err != nil {
        fmt.Printf(
            "%s[!] %sFailed read collections!\n",
            color.R, color.N,
        )
        return
    }

    for _, entry := range entries {
        metaPath := filepath.Join(
            "collections", entry.Name(), "metadata.json",
        )

        data, err := listData.ReadFile(metaPath)
        if err != nil {
            continue
        }

        var pkg Metadata
        err = json.Unmarshal(data, &pkg)
        if err != nil {
            continue
        }

        fmt.Printf(
            "%s%s%s/%s%s%s\n",
            color.GG, pkg.Name, color.WW,
            color.BB, pkg.Homepage, color.N,
        )
    }
}

// Copyright (c) 2026 Zeronetsec