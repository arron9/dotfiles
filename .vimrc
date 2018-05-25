" 修改leader键
let mapleader = ','
let g:mapleader = ','


" 开启语法高亮
syntax on

" 检测文件类型
filetype on
" "针对不同的文件类型采用不同的缩进格式
"
filetype indent on

filetype plugin on

filetype plugin indent on


" 文件修改之后自动载入
set autoread
" 启动的时候不显示那个援助乌干达儿童的提示

set shortmess=atI

let g:debuggerPort = 9001

let g:PHP_SYNTAX_CHECK_BIN = 'php' 

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

let Tlist_Auto_Open = 0

"nmap wm :WMToggle


"nmap ne :NERDTree

let g:UltiSnipsExpandTrigger="<tab>"
" 跳至下个 tab stop
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:winManagerWindowLayout='FileExplorer|TagList'

"autocmd vimenter * NERDTree

" 关闭交换文件
set noswapfile
set nu 

syntax enable


set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascrīpt set omnifunc=javascrīptcomplete#CompleteJS
autocmd FileType html,tpl set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

nmap <leader>w :w<CR>

nmap <leader>bn :bn<CR>
nmap <leader>bp :bp<CR>
nmap <leader>bl :bl<CR>
nmap <leader>bf :bf<CR>

"标签移动
nmap tbn :tabn<CR>
nmap tbp :tabp<CR>
nmap tbc :tabc<CR>
nmap tbo :tabo<CR>

"nmap = =G<CR>

nmap <leader>p "+p

" => 选中及操作改键

" 调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv

" y$ -> Y Make Y behave like other capitals
map Y y$

" 复制选中区到系统剪切板中
vnoremap <leader>y "+y
noremap <leader>p "+p

" auto jump to end of select
" vnoremap <silent> y y`]
" vnoremap <silent> p p`]
" nnoremap <silent> p p`]

" select all
map <Leader>sa ggVG

" select block
nnoremap <leader>v V`}



nmap <C-H>  <C-W><C-H>
nmap <C-K>  <C-W><C-K>
nmap <C-J>  <C-W><C-J>
nmap <C-L>  <C-W><C-L>
nmap <C-T>  <C-W><C-T>
nmap <C-X>  <C-W><C-X>

"let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr>,  pumvisible() ? "\<C-n>" : "\,"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <leader>.
"inoremap <expr><leader> pumvisible() ? "\<C-y>" : "\<leader>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.

    let g:neocomplete#sources#omni#input_patterns = {}

"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" phpcomplete
let g:phpcomplete_relax_static_constraint = 1
let g:phpcomplete_complete_for_unknown_classes = 1
let g:phpcomplete_search_tags_for_variables = 1
let g:phpcomplete_parse_docblock_comments = 1
let g:phpcomplete_cache_taglists = 1

let g:dbgPavimPort = 9000
let g:dbgPavimBreakAtEntry = 0

" ctrlp ctrlpfunky{{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v([\/]\.(git|hg|svn|rvm))|(cache|node_modules|dist|log|vendor)$',
            \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
            \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
" 如果安装了ag, 使用ag
if executable('ag')
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

" ctrlpfunky
" ctrlp插件1 - 不用ctag进行函数快速跳转
nnoremap <leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1

let g:ctrlp_extensions = ['funky']
" }}}

nnoremap <leader>q :q<CR>

" 显示当前的行号列号
set ruler
" 在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7

" 命令行（在状态行下）的高度，默认为1，这里是2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" Always show the status line - use 2 lines for the status bar
set laststatus=2

" 显示行号
set number
" 取消换行
set nowrap

" 括号配对情况, 跳转并高亮一下匹配的括号
set showmatch
" How many tenths of a second to blink when matching brackets
set matchtime=2


" 设置文内智能搜索提示
" 高亮search命中的文本
set hlsearch
" 打开增量搜索模式,随着键入即时搜索
set incsearch
" 搜索时忽略大小写
set ignorecase
" 有一个或以上大写字母时仍大小写敏感
set smartcase

" 代码折叠
set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
set foldmethod=indent
set foldlevel=99
" 代码折叠自定义快捷键 <leader>zz
let g:FoldMethod = 0
map <leader>zz :call ToggleFold()<cr>
fun! ToggleFold()
    if g:FoldMethod == 0
        exe "normal! zM"
        let g:FoldMethod = 1
    else
        exe "normal! zR"
        let g:FoldMethod = 0
    endif
endfun

set shiftround

" A buffer becomes hidden when it is abandoned
set hidden
set wildmode=list:longest
set ttyfast

" 00x增减数字时使用十进制
set nrformats=

" 相对行号: 行号变成相对，可以用 nj/nk 进行跳转
set relativenumber number
au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber
" 插入模式下用绝对行号, 普通模式下用相对
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber number
    else
        set relativenumber
    endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" 防止tmux下vim的背景色显示异常
" Refer: http://sunaku.github.io/vim-256color-bce.html
if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

"==========================================
" FileEncode Settings 文件编码,格式
"==========================================
" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
"set langmenu=zh_CN.UTF-8
"set enc=2byte-gb18030
" 下面这句只影响普通模式 (非图形界面) 下的 Vim
set termencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m
" 合并两行中文时，不在中间加空格
set formatoptions+=B


nmap ne :NERDTreeToggle<CR>

syntax enable set gfn=Courier_New:h14

set nocompatible  
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
set encoding=utf-8
set fileencoding=utf-8
set helplang=cn
set fileencodings=ucs-bom,utf-8,gbk,cp936,gb2312,big5,latinl,euc-kr
syntax on
language messages zh_CN.utf-8

filetype on 
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

let &termencoding=&encoding

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

set nobackup
"Set mapleader
"

autocmd BufRead,BufNewFile *.md,*.mkd,*.markdown set filetype=markdown.mkd
autocmd BufRead,BufNewFile *.part set filetype=html
autocmd BufRead,BufNewFile *.vue set filetype=html
" disable showmatch when use > in php
au BufWinEnter *.php set mps-=<:>

" 设置可以高亮的关键字
if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|DONE\|XXX\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
  endif
endif


"nerdcommenter {{{
    let g:NERDSpaceDelims=1
    let g:NERDAltDelims_python = 1
" }}}

" vim-studio {{{
    " 依次遍历子窗口
    nnoremap nw <C-W><C-W>"

    noremap <Leader>' vi'
    noremap <Leader>" vi"
    noremap <Leader>( vi(
    noremap <Leader>[ vi[
    noremap <Leader>{ vi{

    " 行尾添加符号
    nmap <Leader>; $a;<esc>
    nmap <Leader>, $a,
    nmap <Leader>= $a => 
    nmap <Leader>: $a : 
    nmap <Leader>{ $a{
    nmap <Leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>

" }}}


" autocmd VimEnter * NERDTree
" 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
"let NERDTreeWinPos="right"
" 当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
"默认显示行号
let NERDTreeShowLineNumbers=1

let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile=$vim.'/data/NerdBookmarks.txt'
let NERDTreeMouseMode=2
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeWinPos='right'

 " NERDTree config
 map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

" Allow saving of files as sudo when I forgot to start vim using sudo.
 cmap w!! w !sudo tee > /dev/null %

 inoremap jk <esc>

" ag.vim {{{
    nnoremap <Leader>gg :Ag<CR>
    let g:ag_working_path_mode="r"
" }}}

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

" " 最大化窗口
" function Maximize_Window()
"   silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
" endfunction
"
"  let g:fullscreen = 0
"     function! ToggleFullscreen()
"         if g:fullscreen == 1
"             let g:fullscreen = 0
"             let mod = "remove"
"         else
"             let g:fullscreen = 1
"             let mod = "add"
"         endif
"         call system("wmctrl -ir " . v:windowid . " -b " . mod . ",fullscreen")
"     endfunction

autocmd GUIEnter * call ToggleFullScreen();

let g:MyVimLib = $VIMRUNTIME.'/gvimfullscreen.dll'
	function ToggleFullScreen()
		call libcallnr(g:MyVimLib, "ToggleFullScreen", 0)
	endfunction

map <silent> <F11> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

"Toggle Menu and Toolba
set guioptions-=m
set guioptions-=T
map <silent> <F3> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

set autochdir 

if has("gui_running")
    au GUIEnter * simalt ~x " 窗口启动时自动最大化
    set lines=35 columns=110
    set guioptions-=m       " 隐藏菜单栏
    set guioptions-=T        " 隐藏工具栏
    set guioptions-=L       " 隐藏左侧滚动条
    set guioptions-=r       " 隐藏右侧滚动条
    set guioptions-=b       " 隐藏底部滚动条
    set showtabline=0       " 隐藏Tab栏
endif

highlight VertSplit ctermbg=blue ctermfg=0 
set fillchars=vert:\|

"set guifont=DejaVu\ Sans\ Mono\ 11
set showmatch 

nmap <leader>e :e!<CR>

nmap tl :TlistToggle<CR>



"Fast reloading of the .vimrc
map <silent> <leader>ss :source $HOME/.vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>ee :e $HOME/.vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost _vimrc source $HOME/.vimrc 
set number

set autoindent

colo desert

set guioptions-=T

set guioptions-=r

let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

let g:SuperTabDefaultCompletionType="context"  


"set tags=D:\wamp\www\tags

let g:winManagerWindowLayout='FileExplorer|TagList'

nmap wm :WMToggle<cr>


set ambiwidth=double
set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

set cc=81
set cuc cul
set cursorcolumn
autocmd InsertEnter * se cul " 用浅色高亮当前行
set ruler " 显示标尺

" 突出显示当前行
set cursorline
colorscheme solarized  
"set guifont=Consolas:h16
set guifont=YaHei_Consolas_Hybrid:h16

"nerdcommenter {{{

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
    let g:NERDAltDelims_python = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" }}}

" Vim Workspace Controller
" ctrlspace {{{
nnoremap <leader><tab> :CtrlSpace<CR>
let g:airline_exclude_preview = 1
hi CtrlSpaceSelected guifg=#586e75 guibg=#eee8d5 guisp=#839496 gui=reverse,bold ctermfg=10 ctermbg=7 cterm=reverse,bold
hi CtrlSpaceNormal   guifg=#839496 guibg=#021B25 guisp=#839496 gui=NONE ctermfg=12 ctermbg=0 cterm=NONE
hi CtrlSpaceSearch   guifg=#cb4b16 guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold
hi CtrlSpaceStatus   guifg=#839496 guibg=#002b36 gui=reverse term=reverse cterm=reverse ctermfg=12 ctermbg=8

if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif
if has("gui_running")
    " Settings for MacVim and Inconsolata font
    let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }
endif
" }}}

" phpcomplete
let g:phpcomplete_relax_static_constraint = 1
let g:phpcomplete_complete_for_unknown_classes = 1
let g:phpcomplete_search_tags_for_variables = 1
let g:phpcomplete_parse_docblock_comments = 1
let g:phpcomplete_cache_taglists = 1

let g:Powerline_colorscheme='solarized256'

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

set noundofile
let g:blade_custom_directives = ['datetime', 'namespaced::directive']
let g:blade_custom_directives_pairs = {'cache': 'endcache'}

nmap <leader>b= :Tabularize /=<CR>
vmap <leader>b= :Tabularize /=<C>
nmap <leader>b: :Tabularize /:\zs<CR>
vmap <leader>b: :Tabularize /:\zs<CR>

nmap    w=  :resize +3<CR>
nmap    w-  :resize -3<CR>
nmap    w,  :vertical resize -3<CR>
nmap    w.  :vertical resize +3<CR>

hi VertSplit guibg=#002b36 
