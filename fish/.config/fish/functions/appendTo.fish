function appendTo --description 'Append to variable $1 all subsequent arguments'
    test (count $argv) -gt 1; or return 1;

    for p in $argv[2..-1]
        not contains $p $$argv[1];
            and set -gx $argv[1] $$argv[1] $p
    end
end

