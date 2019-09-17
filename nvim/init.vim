for s:fn in glob(fnamemodify(expand('<sfile>'), ':h').'/nvim-init.d/*.vim', 0, 1) 
    exec 'source ' . s:fn
endfor 

