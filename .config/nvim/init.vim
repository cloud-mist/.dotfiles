"
"	  ____ _                 _        __  __ _     _
"	 / ___| | ___  _   _  __| |		|  \/  (_)___| |_
"	| |   | |/ _ \| | | |/ _` |		| |\/| | / __| __|
"	| |___| | (_) | |_| | (_| |		| |  | | \__ \ |_
"	 \____|_|\___/ \__,_|\__,_|		|_|  |_|_|___/\__|
"


"
"   MY_VIMRC
"

:autocmd BufRead,BufNewFile config setf dosini

let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog  = '/usr/bin/python2'
let g:ruby_host_prog	= '/usr/bin/ruby'
let g:rustfmt_autosave  = 1

let g:lightline = {
	\ 'colorscheme' : 'deus',
	\}

let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ }
let g:indentLine_setConceal=0
set conceallevel=2
set concealcursor="nvr"
"let g:indentLine_concealcursor = 'nc'
"let g:indentLine_conceallevel = 2

"Set <LEADER> as <SPACE>, ; as :
let mapleader=" "
noremap ; :

" Open the vimrc file anytime
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>

" make Y to copy till the end of the line
nnoremap Y y$
" Copy to system clipboard
vnoremap Y "+y

" Undo operations
noremap l u

" Search
noremap <LEADER><CR> :nohlsearch<CR>
noremap - N
noremap = n

" Indentation
nnoremap < <<
nnoremap > >>

set encoding=utf-8
let &t_ut=''
set scrolloff=8 

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
syntax on
set number
set relativenumber
set wrap
set showcmd
set wildmenu
set noshowmode

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase


" --------------------
" =  Keys   Mapping  =
" --------------------
 
"         ^
"         u
"     < n   i >    
"         e
"         v

noremap <silent> n h
noremap <silent> u k
noremap <silent> e j
noremap <silent> i l
noremap <silent> gu gk
noremap <silent> ge gj

" k is Insert
noremap k i
noremap K i

" Move more Quickly
noremap U 5k
noremap E 5j
noremap W 5w
noremap B 5b

" 移至当前行的第一个字符
noremap N 0
" 移至当前行的最后一个字符
noremap I $

" 重新加载配置 保存 退出
map R :source ~/.config/nvim/init.vim<CR>
map S :w<CR>
map Q :q<CR>



"  ============
"  =  Window  =
"  ============

" 分屏- 键位映射
map s <nop>
map si :set splitright<CR>:vsplit<CR>
map sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
map se :set splitbelow<CR>:split<CR>

" 分屏- 光标聚焦
noremap <LEADER>u <C-w>k
noremap <LEADER>e <C-w>j
noremap <LEADER>n <C-w>h
noremap <LEADER>i <C-w>l
" 分屏- 移至下个窗口
noremap <LEADER>w <C-w>w

" 分屏- 窗口大小调整
noremap <up> :res -5<CR>
noremap <down> :res +5<CR>
noremap <left> :vertical resize+5<CR>
noremap <right> :vertical resize-5<CR>

" 分屏- 窗口横竖切换
noremap sh <C-w>t<C-w>K
noremap sv <C-w>t<C-w>H

"Terminal-mode
tnoremap <Esc> <C-\><C-n>
let g:terminal_kill = "term"


" ===
" === Tab management
" ===
" Create a new tab with tu
noremap tu :tabe<CR>
" Move around tabs with tn and ti
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>

"  -------------
"  =  Plugins  =
"  -------------
call plug#begin('~/.vim/plugged')

" Theme & Something
Plug 'connorholyday/vim-snazzy' 
Plug 'ajmwagar/vim-deus'

Plug 'luochen1990/rainbow'
Plug 'itchyny/lightline.vim'


" Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'theniceboy/vim-snippets'

" Language
Plug 'vhda/verilog_systemverilog.vim'
Plug 'wlangstroth/vim-racket'
Plug 'rust-lang/rust.vim'
Plug 'lervag/vimtex'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" func 
Plug 'skywind3000/vim-terminal-help'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround' 
Plug 'gcmt/wildfire.vim'   
Plug 'Yggdroot/indentLine'
call plug#end()


" ----------Other Theme Set--------------
"set foldmethod=indent
"colorscheme dracula
"colorscheme snazzy
"let g:SnazzyTransparent = 1


"------- Deus Theme ------------
set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set bg=dark
colorscheme deus
let g:deus_termcolors=256

"hi Normal ctermbg=none

" Lazygit
noremap <c-g> :tabe<CR>:term lazygit<CR>

" Vim-go Set
let g:go_echo_go_info = 0
let g:go_doc_popup_window = 1
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0

let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0

let g:go_doc_keywordprg_enabled = 0

let g:go_fmt_command = "gopls"
let g:go_rename_command = "gopls"
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'


" fcitx
let s:fcitx_cmd = executable("fcitx5-remote") ? "fcitx5-remote" : "fcitx-remote"
autocmd InsertLeave * let b:fcitx = system(s:fcitx_cmd) | call system(s:fcitx_cmd.' -c')
autocmd InsertEnter * if exists('b:fcitx') && b:fcitx == 2 | call system(s:fcitx_cmd.' -o') | endif


" 退出时将光标设为Beam.  注释为是否闪烁
augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:ver25
	"-blinkwait400-blinkoff400-blinkon400
augroup END

" --------------
" === vimtex ===
" --------------
let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
let g:vimtex_compiler_latexrun_engines ={'_':'xelatex'}

let g:tex_flavor='latex'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_method = 'zathura'
"let g:vimtex_view_general_viewer = 'llpp'
"let g:vimtex_view_method = 'llpp'
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_mappings_enabled = 0
let g:vimtex_text_obj_enabled = 0
let g:vimtex_quickfix_mode = 1
let g:vimtex_motion_enabled = 0
let maplocalleader=' '


" -------------------------
" ===== MDpreview SET =====
" -------------------------
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 1
let g:mkdp_open_to_the_world = 1
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'microsoft-edge-beta'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'


" coc-translator SET
" popup
nmap <Leader>t <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)
" replace
nmap <Leader>r <Plug>(coc-translator-r)
vmap <Leader>r <Plug>(coc-translator-rv)

" coc-explorer SET
nnoremap  tt :CocCommand explorer<CR>


"rainbow
let g:rainbow_active = 1


" =================
" === Add Cofig ===
" =================

source ~/.config/nvim/vimCfg/alg.vim
source ~/.config/nvim/vimCfg/plugin_Coc.vim
source ~/.config/nvim/vimCfg/compileRun.vim




" ============================================================
" =															 =
" =					 _____   _   _   ____					 =
" =					| ____| | \ | | |  _ \					 =
" =					|  _|   |  \| | | | | |					 =
" =					| |___  | |\  | | |_| |					 =
" =					|_____| |_| \_| |____/                   =
" =															 =
" =															 =
" ============================================================

