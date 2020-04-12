call plug#begin('~/.local/share/nvim/plugged')

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'haya14busa/incsearch.vim'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'neomake/neomake'
Plug 'Gabirel/molokai'

"Plug 'SirVer/ultisnips'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

Plug 'tpope/vim-abolish'

" Completions
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neco-vim'
Plug 'deoplete-plugins/deoplete-jedi', {'for' : 'python'}
Plug 'deoplete-plugins/deoplete-zsh'
Plug 'deoplete-plugins/deoplete-tag'
"Plug 'deoplete-plugins/deoplete-dictionary'
Plug 'ujihisa/neco-look'
Plug 'wellle/tmux-complete.vim'
"Plug 'ervandew/supertab'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neoinclude.vim'
"Plug 'ncm2/float-preview.nvim'

Plug 'Shougo/echodoc.vim'
Plug 'Raimondi/delimitMate'
Plug 'tenfyzhong/CompleteParameter.vim'

Plug 'kchmck/vim-coffee-script', { 'for' : 'coffee'}
Plug 'elixir-lang/vim-elixir', { 'for' : 'elixir'}
"Plug 'Valloric/MatchTagAlways', { 'for' : ['html' , 'xhtml' , 'xml' , 'jinja']}
Plug 'isundil/vim-irssi-syntax', { 'for' : 'irssi'}
Plug 'digitaltoad/vim-jade', { 'for' : 'jade'}
Plug 'elzr/vim-json', { 'for' : ['javascript','json']}
Plug 'zyedidia/julialint.vim', {'for' : 'julia'}
Plug 'tie/llvm.vim', { 'for' : 'llvm' }
Plug 'tbastos/vim-lua', {'for' : 'lua'}
Plug 'SpaceVim/vim-luacomplete', {'for' : 'lua'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'joker1007/vim-markdown-quote-syntax', {'for': 'markdown'}
Plug 'juvenn/mustache.vim', { 'for' : ['mustache']}
Plug 'gregjurman/vim-nc', {'for' : 'ngc'}
Plug 'c9s/perlomni.vim', {'for' : 'perl'}
Plug 'voxpupuli/vim-puppet', {'for' : 'puppet'}
Plug 'Vimjas/vim-python-pep8-indent', {'for' : 'python'}
Plug 'peterhoeg/vim-qml', { 'for' : 'qml'}
Plug 'mMontu/tcl.vim--smithfield', {'for' : 'tcl'}
Plug 'rust-lang/rust.vim', { 'for' : 'rust' }
Plug 'lervag/vimtex', { 'for' : 'tex'}
Plug 'cespare/vim-toml', { 'for' : 'toml'}
Plug 'vhda/verilog_systemverilog.vim', {'for' : ['verilog', 'systemverilog', 'verilog_systemverilog']}
Plug 'vimperator/vimperator.vim', { 'for' : 'vimperator'}
Plug 'amal-khailtash/vim-xdc-syntax', {'for' : 'xdc'}
Plug 'chrisbra/vim-zsh', {'for' : 'zsh'}
Plug 'vim-scripts/Vim-SELinux-suite', {'for' : 'selinux'}
Plug 'https://gn.googlesource.com/gn', { 'rtp': 'misc/vim' }

call plug#end()

