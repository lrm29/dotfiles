set -l cwd (dirname (status --current-filename))/environment
echo "Sourcing Environment Files in $cwd ..."
for file in "$cwd"/*.fish
    echo "    " (basename $file)
    . $file
end

