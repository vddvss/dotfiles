if exists('g:GtkGuiLoaded')
    exec 'source ~/.local/share/nvim-gtk/runtime/plugin/nvim_gui_shim.vim'

    call rpcnotify(1, 'Gui', 'Font', 'BlexMono Nerd Font 11')
    call rpcnotify(1, 'Gui', 'Option', 'Popupmenu', 1)

    NGTransparency .925
    NGPreferDarkTheme on
endif

