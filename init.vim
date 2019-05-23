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

Plug 'https://github.com/autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \'do': 'bash install.sh',
            \}

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'https://github.com/ncm2/ncm2-highprio-pop'
Plug 'ncm2/ncm2-match-highlight'
Plug 'ncm2/ncm2-ultisnips'
Plug 'SirVer/ultisnips'
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}

call plug#end()
set hidden

"NCM2
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

let g:ncm2#popup_delay = 100
let g:ncm2#match_highlight = 'bold'

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

"LanguageClient
let g:LanguageClient_loggingLevel = 'INFO' 
let g:LanguageClient_loggingFile = expand('~/.local/share/nvim/LanguageClient.log')
let g:LanguageClient_serverCommands = {
            \  'cpp' : ['cquery', '--language-server', '--log-file=/tmp/cq.log', '--init={"cacheDirectory":"/tmp/cquery/"}']
            \}

let g:LanguageClient_autoStart = 1
let g:LanguageClient_autoStop = 1

set completefunc=LanguageClient#complete
set formatexpr=LanguageClient_textDocument_rangeFormatting()

nnoremap <silent> gh :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient#textDocument_references()<CR>
nnoremap <silent> gs :call LanguageClient#textDocument_documentSymbol()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
