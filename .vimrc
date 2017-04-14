set nocompatible              " be iMproved, required
set nocompatible
filetype plugin on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'	" подсказка функций из библиоек
Plugin 'scrooloose/nerdtree' " дерево файлов

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax on

"нумерация строк
set number
"
" --- блок настройки отступов ---
"
"Заменяет инкапсуляцую на пробелы
set expandtab
"
"Число пробелов
set tabstop=4
"
"Число пробелов команды << and >>
set shiftwidth=4
set smarttab
"
"автоматически выставляет отступы
set smartindent
"
"--- конец блока настройки отступов --- 
"
"переход по виртуальным строкам
nmap j gj
nmap k gk
"
"Русская расскладка cntr+^ 
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
"
" *** абревиатуры ***
"
"абревиатуры python
iab bang! #!/usr/bin/env python
iab utf! # -*- coding: UTF-8 -*-
iab ifmain! if __name__ == "__main__":<CR>

" *** map клавищ ***
let mapleader="," "Клавища лидер
"
" неотображаемые символы
nmap <leader>l :set list!<CR> 
"
map <leader>n : NERDTreeToggle<CR>
"
" вклейка
set pastetoggle=<F2>
