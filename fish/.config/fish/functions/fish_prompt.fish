function fish_prompt
    set_color red
    echo -n $USER:
    set_color --bold

    echo -n (shortPath (basename $HOME))

    set_color normal
    echo -n ' > ... '\n
    echo -n "% "
end

