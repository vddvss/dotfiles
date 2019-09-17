let g:LanguageClient_autoStart = 1
let g:LanguageClient_completionPreferTextEdit = 1
let g:LanguageClient_serverCommands = {
    \ 'sh': ['bash-language-server', 'start'],
    \ 'yaml': ['yaml-language-server', '--stdio']
    \ }
let g:LanguageClient_loadSettings = 1

