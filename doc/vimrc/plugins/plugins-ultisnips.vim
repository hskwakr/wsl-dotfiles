" -------------------------------------
" Settings for plugins
"   sirver/ultisnips
"   prabirshrestha/asyncomplete-ultisnips
" -------------------------------------
UsePlugin 'ultisnips'
UsePlugin 'asyncomplete-ultisnips'

" Location
let s:snippets_dir = g:dotfiles_dir . '/doc/vimrc/etc/snippets'
let g:UltiSnipsSnippetDirectories=['UltiSnips', s:snippets_dir . '/UltiSnips']

" For asyncomplete
let g:UltiSnipsExpandTrigger='<c-e>'
call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
    \ 'name': 'ultisnips',
    \ 'allowlist': ['*'],
    \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
    \ }))

" List
nnoremap <Leader>l :call UltiSnips#ListSnippets()<CR>
