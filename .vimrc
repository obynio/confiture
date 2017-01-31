" Vim configuration - sybiload

" Misc
set nocompatible					" Cancel Vi compatibility
set hidden						" Hide files when opening other  eiles
set noswapfile						" No swapfile when opening a file

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"Editing
set backspace=indent,eol,start				" Normal backspace behaviour
set fileformat=unix					" For LF only character
set smartindent						" Intelligent indentation
set autoindent						" Keep indentation on a new line
set ttymouse=urxvt                                      " Mouse set to urxvt mode

" UI
set title		    				" Updating vim title
set cursorline						" Highlight the current line
set number	    					" Line number
set wrap    						" Show long line on multiple lines?
set ignorecase						" Ignore case on search
set smartcase						" Enable case sensitivity on search
set incsearch						" Highlight search results while taping
set hlsearch						" Highlight search results
set showtabline=2					" Show the tab line on top

" Beep
set visualbell						" Prevent beep
set noerrorbells					" Prevent beep

" Color
let &t_Co=256						" Color issues
colorscheme confiture					" Color stuff
syntax enable						" Syntax colors

" Disable auto commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Vundle stuff
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()

" Toggle autoindent on paste
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ UrxvtPaste()

function! UrxvtPaste()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

" Default
filetype on
filetype plugin on
filetype indent on

set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4

" Autoscroll mode
set scrolloff=20

" Filetype
autocmd Filetype html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd Filetype css setlocal tabstop=2 softtabstop=2 shiftwidth=2
