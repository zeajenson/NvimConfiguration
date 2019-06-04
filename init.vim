"Settings

let mapleader="\<SPACE>"
set showmatch
set number
set expandtab
set tabstop=4
set shiftwidth=4

"Plugins 
call plug#begin('~/.local/share/nvim/plugged')

Plug 'https://github.com/junegunn/fzf.vim'

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'morhetz/gruvbox'

Plug 'tpope/vim-fugitive'

Plug 'https://github.com/neomake/neomake'

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

call plug#end()
set hidden

"Airline
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'gruvbox'

" air-line
let g:airline_extensions = ['branch']
let g:airline_powerline_fonts = 1


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

colorscheme gruvbox
highlight Normal ctermbg=NONE
"Coc.nvim



"LanguageClient
"let g:LanguageClient_loggingLevel = 'INFO' 
"let g:LanguageClient_loggingFile = expand('~/.local/share/nvim/LanguageClient.log')
"let g:LanguageClient_serverCommands = {
"            \  'cpp' : ['cquery', '--language-server', '--log-file=/tmp/cq.log', '--init={"cacheDirectory":"/tmp/cquery/"}']
"            \}


