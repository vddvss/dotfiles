LUA_VER="5.3"
export LUA_PATH="$HOME/.luarocks/share/lua/$LUA_VER/?.lua;$HOME/.luarocks/share/lua/$LUA_VER/?/init.lua;/usr/share/lua/$LUA_VER/?.lua;/usr/share/lua/$LUA_VER/?/init.lua;/usr/lib64/lua/$LUA_VER/?.lua;/usr/lib64/lua/$LUA_VER/?/init.lua;./?.lua;./?/init.lua"
export LUA_CPATH="$HOME/.luarocks/lib/lua/$LUA_VER/?.so;/usr/lib/lua/$LUA_VER/?.so;/usr/lib64/lua/$LUA_VER/?.so;/usr/lib64/lua/$LUA_VER/loadall.so;./?.so"

varmunge PATH "$HOME/.luarocks/bin"
unset LUA_VER

