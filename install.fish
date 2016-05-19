#!/usr/bin/env fish

set -l packages \
    eslint      \
    fish        \
    omf         \
    git         \
    vim         \
    vscode

for package in $packages
    set -l stowDir (pwd)
    set -l targetDir $HOME

    echo "Installing $package to $targetDir..."
    stow -d $stowDir -t $targetDir $package
end
