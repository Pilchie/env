" Map ; to : to avoid hitting shift all the time.
map ; :

" Add some file types
au BufNewFile,BufRead *.xaml setf xml
au BufNewFile,BufRead *.vssettings setf xml 
au BufNewFile,BufRead *.*proj,*.*proj.user setf xml
au BufNewFile,BufRead *.targets setf xml
au BufNewFile,BufRead *.csx setf cs

" turn syntax highlighting on.
syn on

" Set some options.
set ignorecase
set nowrap
set shiftwidth=4
set tabstop=4
set textwidth=80
set number
set expandtab
set ruler
set smartindent 
set backspace=indent,eol,start
set clipboard=unnamed

behave mswin

if has('gui_running')
    set background=light
else
    set background=dark
endif

set guifont=Consolas:h12:cANSI
