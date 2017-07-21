" regular setting
set number
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set backspace=indent,eol,start
set ignorecase
set autoindent
syntax on
set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
let mapleader = ","

" vundle configuration
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'stephenmckinney/vim-solarized-powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()            " required
filetype plugin indent on    " required

" NerdTree
" autocmd vimenter * NERDTree " open NerdTree once vim is opened
" put the cursor at the text area instead of the tree
" wincmd w
" autocmd VimEnter * wincmd w
" quit NERDTree if no other file is opened
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = 'ᐅ'
let g:NERDTreeDirArrowCollapsible = 'ᐁ'

" Map ctrl+n to NERDTree
map <C-n> :NERDTreeToggle<CR>

" NerdCommenter
let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace=1

" solarized theme
syntax enable
if has("gui_running")
  set background=light
else
  set background=dark
endif

set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized


" airline
let g:airline_theme = 'bubblegum'
let g:airline_theme = 'kalisi'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols for airline
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_powerline_fonts=1

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:Powerline_symbols = 'fancy'

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#eclim#enabled = 1

" airline selection
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" YouCompleteMe setting
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax=1

" delimitMate setting
let delimitMate_expand_cr = 1
" let delimitMate_expand_space = 1

" autoformat setting
let g:formatdef_googlecplus = '"clang-format -style=google"'
let g:formatters_cpp = ['googlecplus']
noremap <S-C-f> :Autoformat<CR>
