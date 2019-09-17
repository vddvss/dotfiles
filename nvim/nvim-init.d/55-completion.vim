imap <expr><Tab> pumvisible() ?
               \    "\<C-y>" : neosnippet#expandable_or_jumpable() ?
               \        "\<Plug>(neosnippet_expand_or_jump)" : "\<Tab>"
smap <expr><Tab> neosnippet#expandable_or_jumpable() ?
               \    "\<Plug>(neosnippet_expand_or_jump)" : "\<Tab>"

set completeopt=menuone,noinsert,preview

