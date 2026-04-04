// GitMarket Project

package utils

import (
    "embed"
    "encoding/json"
)

//go:embed data/*.json
var dataFS embed.FS

func loadPackages() ([]Package, error) {
    var packages []Package

    files, err := dataFS.ReadDir("data")
    if err != nil {
        return nil, err
    }

    for _, file := range files {
        content, err := dataFS.ReadFile("data/" + file.Name())
        if err != nil {
            continue
        }

        var pkg Package
        if err := json.Unmarshal(content, &pkg); err != nil {
            continue
        }

        packages = append(packages, pkg)
    }

    return packages, nil
}

// Copyright (c) 2026 Zeronetsec