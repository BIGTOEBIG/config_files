" ===  source other config files =========

if filereadable(expand("/etc/vimrc"))
    " vim in git bash
    source /etc/vimrc
endif
if filereadable(expand("$VIMRUNTIME/../_vimrc"))
    " win32 gvim setting
    source $VIMRUNTIME/../_vimrc
endif

" === Common settings ======================
set nu
set hlsearch
set noincsearch
set nobackup
set mouse=a
" set cursorline

" === tab indent setting ===================
set shiftwidth=4
set tabstop=4
set expandtab

set smartindent
"set autoindent
"set indentexpr
"set cindent
autocmd FileType make set noexpandtab

" ======  fold setting ======================
set foldmethod=indent
set nofoldenable

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

" === Plugin ===============================

set rtp+=~/.vim/bundle/Vundle.vim
set nocompatible
filetype off

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" put your plugins here -----
Plugin 'godlygeek/tablular'
Plugin 'perservim/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'morhetz/gruvbox'
call vundle#end()

filetype plugin indent on

" === Spell ================================
autocmd FileType makedown setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell

" === Style Setting ========================
if has("gui")
    " ====== gui font setting =================
    if  has('gui_win32') || has("gui_win64")      " windows gui case
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
	if &term =~ "xterm\\|rxvt"
		let &t_SI = "\<Esc>]12;yellow\x7\e[5 q"
		let &t_SR = "\<Esc>]12;red\x7\e[1 q"
		let &t_EI = "\<Esc>]12;white\x7\e[2 q"
	    " let &t_SI = "\<Esc>[62 q"
	    " let &t_SR = "\<Esc>[62 q"
	    " let &t_EI = "\<Esc>[62 q"
	endif
endif

" let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_level = 2
