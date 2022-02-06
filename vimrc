" ======  source other config files =========
if filereadable(expand("$VIMRUNTIME/../_vimrc"))
    " win32 gvim setting
    source $VIMRUNTIME/../_vimrc
endif
if filereadable(expand("/etc/vimrc"))
    " vim in git bash
    source /etc/vimrc
endif

" ======  common settings ===================
set nu
set hls
set incsearch
set nowrap
set laststatus=2
" set cursorline
" set mouse
set shiftwidth=4
set tabstop=4
set expandtab

"set autoindent
set smartindent
"set indentexpr
"set cindent

" ======  fold setting ======================
set foldmethod=indent
set nofoldenable
autocmd FileType make set noexpandtab
" ====== Key  Mapping =======
nnoremap <silent> ,m : noh<CR>
nnoremap <silent> ,n : set hls<CR>
map ,s *vey/<C-R>0<CR>:vimgrep /<C-R>0/ %<CR>:copen<CR><C-W>W
map ,a     /<C-R>0<CR>:vimgrep /<C-R>0/ %<CR>:copen<CR><C-W>W
map ,A     /\<<C-R>0\><CR>:vimgrep /\<<C-R>0\>/ %<CR>:copen<CR><C-W>W
vmap ,o     y:vs <C-R>0 <CR><C-W>L
nmap ,d     a<C-R>=strftime('%Y-%m-%d')<CR> <Esc>
nmap ,t     a<C-R>=strftime('%H-%M-%S')<CR> <Esc>
nmap ,D     a<C-R>=strftime('%Y-%m-%d %H-%M-%S')<CR> <Esc>
nnoremap n nzz
nnoremap N Nzz
" ===== Abbre ===============
iab xdate <C-R>=strftime('%Y-%m-%d')<CR>
iab xtime <C-R>=strftime('%H-%M-%S')<CR>

" ======  wrap setting ======================
set nowrap

"" set diffopt+=iwhite
"" " if &diff
"" "     map gs :call IwhiteToggle()
"" "     function! IwhiteToggle()
"" "         if &diffopt =~ 'iwhite'
"" "             set diffopt-=iwhite
"" "         else
"" "             set diffopt+=iwhite
"" "         endif
"" "     endfunction
"" " endif
syntax enable

" ======  encoding setting ==================
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,ucs-2,latin1
set encoding=utf-8

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
if has("gui")
    " ====== gui font setting =================
    if  has('gui_win32') || has("gui_win64")      " windows gui case
        " set guifontset guifont=Courier\ New\ 10
        " set guifont=Cascadia_Code:h10:cANSI
        " set guifont=Source_Code_Pro:h10:cANSI
        set guifont=consolas:h9:cANSI
        set backspace=2 " same as set backspace=indent,eol,start
    else                                          " linux gui case (gui-gtk3)
        set guifont=monospace\ 11
    endif
    colorscheme morning

    " ====== menu language setting ============
    set langmenu=en   "set menu's language of gvim. no spaces beside '='
    set guioptions-=T
    set guioptions-=m
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
    " filetype plugin indent on
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
