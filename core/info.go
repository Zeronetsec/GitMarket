// GitMarket Project

package core

import (
    "embed"
    "fmt"
    "strings"
    "encoding/json"
    "path/filepath"
    "gitmarket/utils/color"
)

//go:embed collections/*/metadata.json
var infoData embed.FS

func Info(name string) {
    if name == "" {
        fmt.Printf(
            "%s[!] %sInvalid tool name!\n",
            color.R, color.N,
        )
        return
    }

    metaPath := filepath.Join(
        "collections", name, "metadata.json",
    )

    data, err := infoData.ReadFile(metaPath)
    if err != nil {
        fmt.Printf(
            "%s[!] %sTool: %s%s %snot found!\n",
            color.R, color.N, color.GG, name, color.N,
        )
        return
    }

    var meta Metadata
    err = json.Unmarshal(data, &meta)
    if err != nil {
        fmt.Printf(
            "%s[!] %sInvalid: %smetadata.json%s\n",
            color.R, color.N, color.GG, color.N,
        )
        return
    }

    deps := "none"
    if len(meta.Dependencies) > 0 {
        deps = strings.Join(meta.Dependencies, ", ")
    }

    status := "not installed"
    if IsInstalled(name) {
        status = "installed"
    }

    fmt.Printf(
        "%sTool: %s%s%s\n",
        color.N, color.GG, meta.Name, color.N,
    )

    fmt.Printf(
        "%sHomepage: %s%s%s\n",
        color.N, color.GG, meta.Homepage, color.N,
    )

    fmt.Printf(
        "%sDescription: %s%s%s\n",
        color.N, color.GG, meta.Description, color.N,
    )

    fmt.Printf(
        "%sDependency: %s%s%s\n",
        color.N, color.GG, deps, color.N,
    )

    fmt.Printf(
        "%sStatus: %s%s%s\n",
        color.N, color.GG, status, color.N,
    )
}

// Copyright (c) 2026 Zeronetsec