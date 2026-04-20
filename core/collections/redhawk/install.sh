#!/usr/bin/env bash
# GitMarket Project

command git clone --depth 1 \
    'https://github.com/tuhinshubhra/red_hawk' \
    "${GMOPT}/redhawk"

cd "${GMOPT}/redhawk"
command grep -qF \
    '#!/usr/bin/env php' 'rhawk.php' || \
        command sed -i \
            '1i #!/usr/bin/env php' 'rhawk.php'
command chmod +x -v "rhawk.php"
command ln -sfv \
    "${GMOPT}/redhawk/rhawk.php" \
    "${GMBIN}/redhawk"
cd

# Copyright (c) 2026 Zeronetsec