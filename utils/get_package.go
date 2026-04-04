// GitMarket Project

package utils

func GetPackage(name string) *Package {
    packages, err := loadPackages()
    if err != nil {
        return nil
    }

    for _, pkg := range packages {
        if pkg.Name == name {
            return &pkg
        }
    }

    return nil
}

// Copyright (c) 2026 Zeronetsec