set nocompatible
filetype plugin on 
syntax on
set encoding=utf8
"Plugins con Vunble

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'

Plugin 'dracula/vim',{'as':'dracula'}  "https://draculatheme.com/vim/
Plugin 'dart-lang/dart-vim-plugin'
" Git Support
Plugin 'kablamo/vim-git-log'
Plugin 'tpope/vim-fugitive'

 
Plugin 'vim-airline/vim-airline' 
Plugin 'vim-airline/vim-airline-themes' 
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
"Permite mantener un historial de cambios"
Plugin 'sjl/gundo.vim'
"Cierra las comillas, parentisis y llaves
Plugin 'Townk/vim-autoclose'

Plugin 'vim-syntastic/syntastic'
Plugin 'vimwiki/vimwiki'
Plugin 'majutsushi/tagbar'

call vundle#end()

color dracula

filetype plugin indent on


"Configuracion

let mapleader = ","

inoremap <up> <nop>
vnoremap <up> <nop>
nnoremap <up> <nop>

inoremap <down> <nop>
vnoremap <down> <nop>
nnoremap <down> <nop>


inoremap <left> <nop>
vnoremap <left> <nop>
nnoremap <left> <nop>

inoremap <right> <nop>
vnoremap <right> <nop>
nnoremap <right> <nop>

"Configuracion de Tagbar https://z0mbix.io/2016/09/04/ctag-support-for-terraform/
nmap <F8> :TagbarToggle<CR>

" Auto open the TagBar when file is supported

nnoremap <silent> <leader>o :CtrlP<CR>
nnoremap <silent> <leader>p :CtrlPTag<cr>
"nnoremap <silent> <leader>b :CtrlPBuffer<cr>
nnoremap <silent> <leader>l :CtrlPLine<cr>
nnoremap <silent> <leader>b :TagbarToggle<CR>
nnoremap <silent> ; :CtrlPBuffer<CR>

" ctags/tagbar
nnoremap <leader>f :ta<space>

" Auto open the TagBar when file is supported
autocmd FileType * nested :call tagbar#autoopen(0)

let g:tagbar_compact = 1
"let g:tagbar_width = 30
"let g:tagbar_case_insensitive

let g:tagbar_type_terraform = {  
    \ 'ctagstype' : 'terraform',
    \ 'kinds' : [
    \ 'r:resources',
    \ 'm:modules',
    \ 'o:outputs',
    \ 'v:variables',
    \ 'f:tfvars'
    \ ],
    \ 'sort' : 0
    \ }

"Configuracion vim-airline

let g:airline#extensions#tabline#enabled = 1
set t_Co=256

"Configuracion para gundo plugin
set undofile 
set undodir=~/.vim/tmp/undo
set history=100
set undolevels=100
nnoremap <leader>u :GundoToggle<CR>
let g:gundo_width=50
let g:gundo_preview_height =40
let g:gundo_right=1
let g:gundo_preview_bottom=1
let g:gundo_close_on_revert=1

if has('python3')
  let g:gundo_prefer_python3 = 1
endif

"Configuraciones
set path+=**
set list 
set listchars=tab:>-
setglobal noerrorbells     "Ningun parpadeo
set modelines=0

set background=dark

set tabstop=2
set shiftwidth=2
set softtabstop=2	" el numero de espacios en blanco a usar
set expandtab  		" reemplaza tab por espacios 
set shiftround


set showcmd		    " Show (partial) command in status line.
set showmode
set showmatch		" Show matching brackets.

"Configuraciones de busqueda

set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set showmatch
set hlsearch 

set pastetoggle=<F2> " en modo insert presionando F2 puedes pegar texto
set autoread

set ttyfast   		" mejora velocidad del scroll 
set relativenumber  " muestra el numero relativo
set nu            "muestra el numero 
set hidden		    " Hide buffers when they are abandoned

set sidescrolloff=5
set autochdir "

set laststatus=2    "despliega barra de estatus
set showtabline=2

set cmdheight=2

set autoindent
set wildmenu     
set scrolloff=4     " deja 4 lineas antes del borde cuando scroleas  	

"Resaltar la ubicacion del mouse 

hi Cursorline cterm=NONE ctermbg=yellow ctermfg=black 
hi Cursorcolumn cterm=NONE ctermbg=yellow ctermfg=black 
nnoremap <Leader>H : set cursorline! cursorcolumn!<CR>
set ruler          " muestra la posicion del mouse 

"Manejo de lineas largas de codigo 
set nowrap
"set textwidth=85

"Despligue de nuevos buffers

set splitbelow
set splitright

" Movimiento en las pantallas generadas por particion
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K



set hlsearch!
nnoremap <F3> :set hlsearch

nmap <leader>w :w!<CR>
nmap <space> zz

nnoremap <leader>t :NERDTreeToggle<CR>

" Permite el folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za 



au BufRead,BufNewFile *.dart set filetype=dart
au BufNewFile,BufRead *.js setlocal noet ts=2 sw=2 sts=2
au BufNewFile,BufRead *.py setlocal noet ts=4 sw=4 sts=4 




