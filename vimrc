" ======  common setting ====================
set nu
set hls
set incsearch
set nocompatible  " not need to be compatible with vi
" set showmatch   " sm (only in version 8.2)
" ======  tab indent setting ================
set tabstop=4
set shiftwidth=4
set noexpandtab

"set autoindent
"set smartindent
"set indentexpr
set cindent

" ======  fold setting ======================
set foldmethod=indent
set nofoldenable

" ======  wrap setting ======================
set nowrap
syntax enable

" ======  encoding setting ==================
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,ucs-2,latin1

" ======  mapping kbd  ======================
nmap <silent> ,m :set nohls<CR>
" or : nmap <silent> ,m :noh<CR>
nmap <silent> ,n :set hls<CR>
nmap <silent> ,+ :set cursorline<CR>:set cursorcolumn<CR>
nmap <silent> ,= :set nocursorline<CR>:set nocursorcolumn<CR>
nmap ,l nzz
nmap ,; Nzz
map ,s *vey/<C-R>0<CR>:vimgrep /<C-R>0/  %<CR>:copen<CR><C-W>W
map ,a /<C-R>0<CR>:vimgrep /<C-R>0/  %<CR>:copen<CR><C-W>W
set ttyfast "Improves smoothness of redrawing

" ======  status line setting ===============
set ruler 
set laststatus=2                    " Always show status line
set statusline=%<%f\                " f(file path) 
set statusline+=%w%h%m%r            " option: w(Preview flag) h(Help Flag) m(modify flag) r(ReadOnly Flag)
set statusline+=\ [%{&ff}]/%y       " fileformat/filetype
set statusline+=\ [%{getcwd()}]     " current dir
set statusline+=\ [%{&encoding}]    " encoding
set statusline+=%=%-14.(%l/%L,%c%V%)\ %p%% " Right aligned file nav info

" ======  language setting ==================
" let $LANG = 'en'  "set message language
" set helplang=en  "set help's language of vim. 

" ===== following setting is for Vundle ==========
if  has('gui') 
    " ====== gui font setting =================
    if  has('gui_win32') || has("gui_win64")      " windows gui case
        " set guifontset guifont=Courier\ New\ 10
        " set guifont=Courier_New:h12:cANSI
        " set guifont=Cascadia_Code:h10:cANSI
        set guifont=Source_Code_Pro:h10:cANSI
    else                                          " linux gui case (gui-gtk3)
        set guifont=source\ code\ pro\ 11
    endif

    " ====== menu language setting ============
    " set langmenu=en   "set menu's language of gvim. no spaces beside '='
    set guioptions+=d
    set guioptions+=P
    " language en_US.utf8   "set menu's language of gvim. no spaces beside '='
    " ====== gui colorscheme setting ==========
    " colorscheme slate
    " colorscheme koehler 
    " colorscheme peachpuff
    " colorscheme blue
    colorscheme morning

else
    " ====== colorscheme setting ==============
    " colorscheme blue
    " set mouse=

    " ====== plugin setting ===================
    " filetype off
    " set rtp+=/c/Users/lxq/.vim/bundle/Vundle.vim
    " "set rtp+=C:\Users\lxq\.vim\bundle\Vundle.vim
    " call vundle#begin()
    " " call vundle#begin('~/.vim/plugins') " alternatively using this call to specify your plugins dir 
    " Plugin 'VundleVim/Vundle.vim'
    " " ---- put your plugins here -----
    " Plugin 'vimwiki'
    " " --------------------------------
    " call vundle#end()
    filetype plugin indent on
    " filetype plugin on
    "
	" ==== cursor color && shape setting (only in terminal)
	if &term =~ "xterm\\|rxvt"
		let &t_SI = "\<Esc>]12;yellow\x7\e[5 q"
		let &t_SR = "\<Esc>]12;red\x7\e[1 q"
		let &t_EI = "\<Esc>]12;white\x7\e[2 q"
	    " let &t_SI = "\<Esc>[62 q"
	    " let &t_SR = "\<Esc>[62 q"
	    " let &t_EI = "\<Esc>[62 q"
	endif
endif
