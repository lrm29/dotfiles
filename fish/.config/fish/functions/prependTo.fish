function prependTo
    set -gx $argv[1] $argv[2..-1] $$argv[1]
end

