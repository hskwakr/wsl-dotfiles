" -------------------------------------
" Settings for plugins
"   sirver/ultisnips
" -------------------------------------

" Location
let s:snippets_dir = g:dotfiles_dir . '/doc/vimrc/etc/snippets'
let g:UltiSnipsSnippetDirectories=['UltiSnips', s:snippets_dir . '/UltiSnips']

let g:UltiSnipsExpandTrigger = '<Space>ss'
let g:UltiSnipsListSnippets = '<Space>sl'
