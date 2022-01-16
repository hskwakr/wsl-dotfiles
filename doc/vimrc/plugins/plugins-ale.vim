" -------------------------------------
" Settings for plugins
"   'dense-analysis/ale'
" -------------------------------------
UsePlugin 'ale'

" Lint
let g:ale_linters = {
\   'go': [
\       'gofmt',
\       'golint',
\       'gopls',
\       'govet',
\   ],
\   'php': [
\       'phpcs',
\   ],
\}

" Fix
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'go': [
\       'goimports',
\       'gofmt',
\   ],
\   'php': [
\       'php_cs_fixer',
\   ],
\}

" Executable path
let g:ale_php_cs_fixer_executable = 'tools/php-cs-fixer'
