" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

filetype plugin on
autocmd FileType apache setlocal commentstring=#\ %s
set nocompatible
filetype on
set autowrite
set ruler
set cindent
syntax on
syntax enable
let fortran_have_tabs=1
"set colorcolumn=73
autocmd FileType fortran set colorcolumn=73
autocmd FileType fortran set wrap
autocmd FileType fortran set linebreak
autocmd FileType fortran set showbreak=\&
set guifont=Consolas:h14
set showmatch
set cursorline
autocmd BufWritePost $MYVIMRC source $MYVIMRC
set showcmd
set nohlsearch
set tabstop=6
set cindent shiftwidth=6
colorscheme onedark
"set tags=~/home/Ren/ctags-5.8/tags
"set autochdir
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_Show_LineNumbers=1
let Tlist_Exit_OnlyWindow = 1
set wildmenu
set wrap
set incsearch



"set statusline=%F%w\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"let Tlist_Use_Left_Window = 1
"set mouse=a
set mouse-=a
set laststatus=2
"set statusline=%2*%n%m%r%h%w%*\ %F\ %1*[FORMAT=%2*%{&ff}:%{&fenc!=''?&fenc:&enc}%1*]\ [TYPE=%2*%Y%1*]\ [COL=%2*%03v%1*]\ [ROW=%2*%03l%1*/%3*%L(%p%%)%1*]\
autocmd FileType fortran set listchars=space:·
"autocmd BufWritePre * %s/\s\+$//e
autocmd FileType fortran set listchars+=eol:↓
set listchars+=eol:↓
setlocal list
set nu
execute pathogen#infect()
filetype plugin indent on
set clipboard=unnamedplus
set noswapfile
"let g:taglist_left=1
let g:tagbar_left=1
nmap <silent> <F8> :TagbarToggle<CR>
nnoremap <F7> :only<CR>
nmap <silent> <F9> :Tlist<CR>
nmap <silent> <C-L> dd<CR>
"nnoremap <C-space> <C-w>w
"autocmd FileType fortran nnoremap <C-c> :s/^/c /
"autocmd FileType fortran nnoremap <C-x> :s/^c//
let Tlist_WinWidth=50
"map <F9> :Tlist<CR>
nmap <silent> <F10> :NERDTreeToggle<CR>
set number relativenumber
let mapleader=","
call plug#begin()
Plug 'andymass/vim-matchup'
call plug#end()
"let g:matchup_matchparen_offscreen = {'method': 'popup'}
"highlight MatchParen cterm=bold ctermbg=lightyellow ctermfg=black guibg=lightyellow guifg=black
"vim-airline

"let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#quickfix#enabled = 1
"let g:airline#extensions#whitespace#enabled = 1
"let g:airline#extensions#wordcount#enabled = 1
"let g:airline#extensions#fileformat#enabled = 1
"let g:airline#extensions#fugitive#enabled = 1
"let g:airline#extensions#tagbar#enabled = 1
"let g:airline#extensions#syntastic#enabled = 1
"let g:airline#extensions#tmuxline#enabled = 1

"let g:airline#extensions#branch#branch_format = ''
"let g:airline#extensions#branch#prefix = ''
"let g:airline#extensions#branch#suffix = ''
let g:airline_theme='jellybeans'
"let g:airline_powerline_fonts = 1
set scrolloff=999
