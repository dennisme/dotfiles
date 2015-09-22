execute pathogen#infect()
execute pathogen#helptags()

inoremap jk <ESC>

syntax enable
filetype indent plugin on
set spell

"Allow hidden buffers, don't limit to 1 file per window/split
set hidden
set t_Co=256

"Color scheme
set background=dark
colorscheme solarized

"Golang set tab to 4
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

"Vim-go
let g:go_fmt_command = "goimports"
let mapleader=","
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)

"Neocomplete
let g:neocomplete#enable_at_startup = 1
autocmd FileType python NeoCompleteLock

"NerdTree
map <C-n> :NERDTreeToggle<CR>

"Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set fileencodings=utf-8
set number
set colorcolumn=80
