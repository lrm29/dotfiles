set -l cwd ~/.config/fish/environment
echo "Sourcing Environment Files in $cwd ..."
for file in "$cwd"/*.fish
    echo "    " (basename $file)
    . $file
end
