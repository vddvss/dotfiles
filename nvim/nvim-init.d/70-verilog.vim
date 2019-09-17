augroup verilog_ft
    autocmd!
    autocmd Filetype verilog_systemverilog set cindent
    autocmd Filetype verilog_systemverilog nnoremap <leader>i :VerilogFollowInstance<CR>
    autocmd Filetype verilog_systemverilog nnoremap <leader>I :VerilogFollowPort<CR>
    autocmd Filetype verilog_systemverilog nnoremap <leader>u :VerilogGotoInstanceStart<CR>
augroup END

let g:verilog_disable_indent_lst = 'module,eos'

