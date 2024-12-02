" colors
syntax enable 
set noswapfile

" 空格还有制表符
set tabstop=4 " 读取TAB用4个空格表示
set softtabstop=4 " 编辑时候一个Tab用4个空格表示
set expandtab " tab 转换为空格

" ui 配置
set number
set showcmd " 在右下角展示最后输入的命令
set relativenumber
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch

" searching
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

" Movement
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap gV `[v`]

" Leader Shortcuts
let mapleader=" "
inoremap jk <esc>
" nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>s :mksession<CR>





call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ryanoasis/vim-devicons'    " 图标支持插件
Plug 'frazrepo/vim-rainbow'
call plug#end()


colorscheme gruvbox
" nerdtree
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" fzf
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :GFiles<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fl :Lines<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>fw :Windows<CR>

