" Vim configuration - sybiload

" Misc
set nocompatible					" Cancel Vi compatibility
set hidden							" Hide files when opening other  eiles
command! E Explore
set noswapfile
set mouse=a

"Editing
set backspace=indent,eol,start		" Normal backspace behaviour
set smartindent						" Intelligent indentation
set autoindent						" Keep indentation on a new line
	
" UI
set title							" Updating vim title
set cursorline						" Highlight the current line
set number							" Line number
set wrap							" Show long line on multiple lines?

" Search
set ignorecase						" Ignore case on search
set smartcase						" Enable case sensitivity on search
set incsearch						" Highlight search results while taping
set hlsearch						" Highlight search results

" Beep
set visualbell						" Prevent beep
set noerrorbells					" Prevent beep

" Color
let &t_Co=256						" Color issues
syntax enable						" Syntax colors
set background=dark					" Solarized stuff
colorscheme solarized				" Solarized stuff

filetype on
filetype plugin on
filetype indent on

" Indentation settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" Color column for 80 chars limitation
" set colorcolumn=80
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Vundle
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
