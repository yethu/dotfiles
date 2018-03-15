set nocompatible
set shell=/bin/bash
syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'prettier/vim-prettier'
Plugin 'sheerun/vim-polyglot'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-surround'
Plugin 'ternjs/tern_for_vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'mxw/vim-jsx'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/' }

call vundle#end()

filetype plugin indent on

set swapfile
set dir=~/tmp
set runtimepath^=~/.vim/bundle/ctrlp.vim
set expandtab
set shiftwidth=2
set softtabstop=2

set number

" {
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
" }

" { ycm path
let g:ycm_server_python_interpreter = '/usr/bin/python2.7'
" }

" { config for CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|bower_components'
" }

" { upon hitting escape to change modes,
"   send successive move-left and move-right
"   commands to immediately redraw the cursor
inoremap <special> <Esc> <Esc>hl
" }

" { don't blink the cursor
set guicursor+=i:blinkwait0
" }

" { change cursor in different modes
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
" }

" {
imap 0A <ESC>ki
imap 0A <ESC>ji
imap 0A <ESC>li
imap 0A <ESC>hi
" }
