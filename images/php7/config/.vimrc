syntax on
set enc=utf8
set nu
set hls
set ignorecase
set smartcase
set showcmd
set background=dark
"colorscheme solarized
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set incsearch

set so=6
set ts=6

"set colorcolumn=80
set ruler

set hlsearch             "搜索高亮
set nocompatible         "设置为不兼容
filetype plugin on       "开启文件类型检查
colo peachpuff           "启用darkblue颜色方案
set bg=dark              "显示颜色色调
set nobackup             "不备份

"折叠设置
"set foldmethod=indent
"set history=400


:inoremap ( ()<Esc>i
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i
:inoremap < <><Esc>i

" Removes trailing spaces
function TrimWhiteSpace()
    %s/\s*$//
    ''
:endfunction

" Show extra whitespace
"set list listchars=trail:.,extends:>
set list listchars=tab:»·,trail:·
autocmd FileWritePre * :call TrimWhiteSpace()
autocmd FileAppendPre * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre * :call TrimWhiteSpace()

:nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>
:nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>
