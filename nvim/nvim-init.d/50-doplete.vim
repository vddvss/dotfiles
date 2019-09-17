let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('num_processes', 8)
call deoplete#custom#source('_', 'max_menu_width', 10000)
call deoplete#custom#source('_', 'max_abbr_width', 8000)
call deoplete#custom#source('_', 'max_kind_width', 8000)
call deoplete#custom#source('buffer', 'rank', 101)
call deoplete#custom#source('file', 'rank', 600)
call deoplete#custom#source('look', 'min_pattern_length', 4)
call deoplete#custom#source('look', 'smart_case', v:false)
call deoplete#custom#source('look', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#source('look', 'rank', 30)

set complete+=kspell

