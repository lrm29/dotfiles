function shortPath
    test (count $argv) -eq 1;
        or return 1;

    set -l pwdArray (echo $PWD | tr -s '/' '\n')
    set -l rootDir $argv[1]

    set pwdArrayRootIndex 0
    for i in (seq (count $pwdArray))
        if test "$pwdArray[$i]" = "$rootDir"
            set pwdArrayRootIndex (math $i + 1)
            break;
        end
    end

    test $pwdArrayRootIndex -ne 0;
        or return 1;

    for i in (seq $pwdArrayRootIndex (count $pwdArray))
        echo -n /
        if test $i -ne (count $pwdArray)
            set -l directoryArray (echo -n $pwdArray[$i] | fold -w1)
            echo -n $directoryArray[1]
        else
            echo -n $pwdArray[$i]
        end
    end

    return 0;
end

