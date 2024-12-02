" colors
colorscheme default
syntax enable 

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
