# Packages installed locally
# Use --prefix=$s/Packages when configuring packages

set -x SOURCES $HOME/Sources
set -x PACKAGES $HOME/LocalPackages
set -x STOW_DIR $PACKAGES/stow

prependTo PATH $PACKAGES/bin
prependTo PATH $PACKAGES/include
prependTo LD_LIBRARY_PATH $PACKAGES/lib
prependTo LD_LIBRARY_PATH $PACKAGES/lib64
prependTo MANPATH :$PACKAGES/share/man
