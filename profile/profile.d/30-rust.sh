varmunge PATH "$HOME/.cargo/bin"
RUST_ROOT="$(rustc --print sysroot)"
varmunge LD_LIBRARY_PATH "$RUST_ROOT/lib"
varmunge MANPATH "$RUST_ROOT/share/man"

unset RUST_ROOT

