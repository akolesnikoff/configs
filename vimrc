" ============================================================================
" Basic VIM configuration file (~/.vimrc) with Vundle for plugin management
" ============================================================================

" ----------------------------------------------------------------------------
" General settings
" ----------------------------------------------------------------------------

" Use Vim in a more modern mode, not Vi compatible
set nocompatible

" Enable filetype-based indentation and plugins
filetype off
filetype plugin indent off

" ----------------------------------------------------------------------------
" Vundle Setup
" ----------------------------------------------------------------------------
" Ensure Vundle is installed:
"   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
" If you don't have it cloned, please do so before starting Vim.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Let Vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" Add plugins here, for example:
" Plugin 'tpope/vim-sensible'
" Plugin 'vim-airline/vim-airline'
"
Plugin 'NLKNguyen/papercolor-theme'

call vundle#end()
filetype plugin indent on

" ----------------------------------------------------------------------------
" General editor settings
" ----------------------------------------------------------------------------

" Enable syntax highlighting
syntax on

" Show line numbers (no relative numbering)
set number

" Highlight current line
set cursorline

" Always show the status line
set laststatus=2

" Enable mouse support in normal and visual modes
set mouse=n

" Persistent undo (requires an existing undo directory)
if has('persistent_undo')
    set undofile
    set undodir=~/.vim/undo/
    if !isdirectory($HOME."/.vim/undo")
        call mkdir($HOME."/.vim/undo", "p", 0700)
    endif
endif

" ----------------------------------------------------------------------------
" Indentation and tabs
" ----------------------------------------------------------------------------

" Use spaces instead of tabs
set expandtab

" 4 spaces per indentation
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Smart indentation
set smartindent
set autoindent

" ----------------------------------------------------------------------------
" Searching
" ----------------------------------------------------------------------------

" Highlight search matches
set hlsearch

" Incremental search
set incsearch

" Ignore case unless uppercase is used
set ignorecase
set smartcase

" ----------------------------------------------------------------------------
" Interface and usability
" ----------------------------------------------------------------------------

" Show matching brackets
set showmatch

" Enhanced command-line completion
set wildmenu

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Use system clipboard if available
if has('clipboard')
    set clipboard=unnamedplus
endif

" ----------------------------------------------------------------------------
" Colorscheme and appearance
" ----------------------------------------------------------------------------

" True color support if terminal supports it
if has('termguicolors')
    set termguicolors
endif

set background=dark
colorscheme PaperColor

" End of .vimrc
