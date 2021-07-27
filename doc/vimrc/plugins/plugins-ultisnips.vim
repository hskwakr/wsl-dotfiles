" -------------------------------------
" Settings for plugins
"   sirver/ultisnips
"   prabirshrestha/asyncomplete-ultisnips
" -------------------------------------

" Location
let s:snippets_dir = g:dotfiles_dir . '/doc/vimrc/etc/snippets'
let g:UltiSnipsSnippetDirectories=['UltiSnips', s:snippets_dir . '/UltiSnips']

let g:UltiSnipsExpandTrigger='<c-e>'
call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
    \ 'name': 'ultisnips',
    \ 'allowlist': ['*'],
    \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
    \ }))
