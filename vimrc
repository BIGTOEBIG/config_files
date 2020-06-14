" ===== following setting is for Vundle ==========
if ! has('win32') || has('win64')
    set nocompatible
    filetype off
    set rtp+=/c/Users/lxq/.vim/bundle/Vundle.vim
    "set rtp+=C:\Users\lxq\.vim\bundle\Vundle.vim
    call vundle#begin()
    " call vundle#begin('~/.vim/plugins') " alternatively using this call to specify your plugins dir 
    Plugin 'VundleVim/Vundle.vim'
    " ---- put your plugins here -----
    Plugin 'vimwiki'
    " --------------------------------
    call vundle#end()

    filetype plugin indent on
    " filetype plugin on
endif
" ================================================
" Put the rest of your vimrcs here
let $LANG = 'en'  "set message language
set langmenu=en   "set menu's language of gvim. no spaces beside '='
" language en_US.utf8   "set menu's language of gvim. no spaces beside '='
set helplang=en  "set help's language of vim. 

set tabstop=4
set shiftwidth=4
set expandtab

set mouse=a

" cindent, indentexpr
set smartindent
set autoindent

" set guifontset guifont=Courier\ New\ 10
" set guifont=Courier_New:h12:cANSI
set guifont=Cascadia_Code:h10:cANSI

set nu
set hls
" colorscheme slate
" colorscheme koehler 
" colorscheme peachpuff
set cursorline " hightlight current line
" set cursorcolumn " hightlight current column
set ruler 

nmap <silent> ,m :set nohls<CR>
" or : nmap <silent> ,m :noh<CR>
nmap <silent> ,n :set hls<CR>
nmap <silent> ,c :%s///gc<CR>
nmap ,l nzz
nmap ,; Nzz
map ,s *vey/<C-R>0<CR>:vimgrep /<C-R>0/  %<CR>:copen<CR><C-W>W
map ,a /<C-R>0<CR>:vimgrep /<C-R>0/  %<CR>:copen<CR><C-W>W
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,ucs-2,latin1
set ttyfast "Improves smoothness of redrawing


" Always show status line
set laststatus=2
set statusline=%<%f\ " filename
set statusline+=%w%h%m%r " option
set statusline+=\ [%{&ff}]/%y " fileformat/filetype
set statusline+=\ [%{getcwd()}] " current dir
set statusline+=\ [%{&encoding}] " encoding
set statusline+=%=%-14.(%l/%L,%c%V%)\ %p%% " Right aligned file nav info

set foldmethod=indent
set nofoldenable
