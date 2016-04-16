# Usage:
#
# ./configure --prefix=$PACKAGES
# make
# make install prefix=$PACKAGES/stow/mypackagename
#
# stow mypackagename
# stow --delete mypackagename
function stow
    command stow -d $PACKAGES/stow -t $PACKAGES $argv
end
