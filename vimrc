
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"设置编辑器可以使用鼠标
set mouse=a
"设置编码为utf-8
set encoding=utf-8
"安装插件开始标志 
call plug#begin('~/.vim/plugged')
" 写过要安装的插件后需要   在普通模式下输入以下命令   :PlugInstall  重启生效 
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'
" 代码检查
Plug 'dense-analysis/ale'

"代码补全插件
Plug 'Valloric/YouCompleteMe'
" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
" Initialize plugin system

call plug#end() "安装插件结束标志

color snazzy
let g:SnazzyTransparent = 1 "透明背景
" noremap a b 这个就会讲a映射为b
" noremap 命令用来更改键位映射
" 注意除了Esc键 还有Ctrl+[这个组合键也可以启动作用
map R :source $MYVIMRC<CR>
map S :w<CR> " 将大写的S键映射为:w和Enter三键组合
set cursorline "显示光标线
set number " 设置行号
set relativenumber "设置当前行距最后一行的行数
set showcmd "没有起作用，这个是为了显示你每一次的按键
set wildmenu
set wrap "设置自动转行，不超出当前窗口
syntax on " 语法高亮
set hlsearch "高亮搜索在搜索结果中高亮显示目标内容
exec "nohlsearch"
" 为执行的意思，因为之前设置了高亮搜索结果，可能导致打开一个新文件，即使没有搜索，他也会高亮匹配上次搜索的结果，这个就是为了消除这种负影响
set incsearch "在搜索时你边输边搜索高亮
set ignorecase "忽略大小写
set smartcase "这个消除忽略大小写带来的负影响，设置后则能精确匹配的，就不会再近似匹配



" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'chromium'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
