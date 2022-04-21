--
--	  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
--	  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
--	  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
--	  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
--    ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
--    ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
--
--										MY_VIMRC

require("plugins")
--
require("basic.basic")
require("basic.keymap")
require("basic.alg")
require("basic.compileRun")
--
require("lsp.lspconfig")
require("lsp.installer")
require("lsp.lspsaga")
require("lsp.fidget")
require("lsp.lsp_signature")
---
require("lsp.lang.mdpre")
require("lsp.lang.vimgo")
require("lsp.lang.vimtex")
require("lsp.lang.haskell")
--
require("cmp.nvim-cmp")
--
require("tools.fterm")
require("tools.gitsign")
require("tools.neoformat")
--
require("beautify.statusline")
require("beautify.theme")
require("beautify.dashboard")

-- ==================
-- === Add vimCfg ===
-- ==================

vim.cmd([[
"source ~/.config/nvim/vimCfg/plugin_Coc.vim
]])

vim.g.python_host_prog = "/usr/bin/python3"
vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.ruby_host_prog = "/usr/bin/ruby"

--
-- viml
--
vim.cmd(
    [[
set foldmethod=marker


let g:rustfmt_autosave  = 1
let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ }

"let g:indentLine_setConceal=0
"set conceallevel=2
"set concealcursor="nvr"
"let g:indentLine_concealcursor = 'nc'
"let g:indentLine_conceallevel = 2
"

" Lazygit
noremap <c-g> :tabe<CR>:term lazygit<CR>

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

" Fzf
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'


"Rainbow
let g:rainbow_active = 1

" Config File Highlight
autocmd BufRead,BufNewFile config,conf setf dosini

" Coc-translator SET
"" popup
"nmap <Leader>t <Plug>(coc-translator-p)
"vmap <Leader>t <Plug>(coc-translator-pv)
"" replace
"nmap <Leader>r <Plug>(coc-translator-r)
"vmap <Leader>r <Plug>(coc-translator-rv)
"
"
"" Coc-explorer SET
"nnoremap  tt :CocCommand explorer<CR>

" Config File Highlight
autocmd BufRead,BufNewFile conf setf dosini

]]
)
