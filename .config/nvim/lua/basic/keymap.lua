local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

local function map(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, opts)
end

local function nmap(shortcut, command)
    map("", shortcut, command)
end

local function nnmap(shortcut, command)
    map("n", shortcut, command)
end

local function inmap(shortcut, command)
    map("i", shortcut, command)
end

local function vnmap(shortcut, command)
    map("v", shortcut, command)
end

-- ############################################################
-- ######################### BASIC ############################
-- ############################################################

-- mapleader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- copy
nnmap("Y", "y$") -- copy current line
vnmap("Y", '"+y') -- copy to clipboard

nmap("l", "u") -- undo
nmap("<LEADER>rc", ":e ~/.config/nvim/init.lua<CR>")
nmap("<LEADER><CR>", ":nohlsearch<CR>")

-- search
nmap("-", "N")
nmap("=", "n")

-- Indent
nmap("<", "<<")
nmap(">", ">>")

--- ############
--  ##  MOVE  ##
--- ############
--       ^
--       u
--   < n   i >
--       e
--       v
--

nmap("n", "h")
nmap("u", "k")
nmap("e", "j")
nmap("i", "l")
nmap("gu", "gk")
nmap("ge", "gj")

-- Insert
nmap("k", "i")
nmap("K", "I")

-- move quickly
nmap("U", "5k")
nmap("E", "5j")
nmap("W", "5w")
nmap("B", "5b")

nmap("N", "0") -- 移动到当前行首
nmap("I", "$") -- 移动到当前行尾

-- 重载，保存,退出
nmap("R", ":source ~/.config/nvim/init.lua<CR>")
nmap("S", ":w<CR>")
nmap("Q", ":q<CR>")

--- ############
--- #  WINDOW  #
--- ############
-- 分屏- 键位映射
nmap("s", "<Nop>")
nmap("si", ":set splitright<CR>:vsplit<CR>")
nmap("sn", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>")
nmap("su", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>")
nmap("se", ":set splitbelow<CR>:split<CR>")

-- 焦点移动
nmap("<LEADER>u", "<C-w>k")
nmap("<LEADER>e", "<C-w>j")
nmap("<LEADER>n", "<C-w>h")
nmap("<LEADER>i", "<C-w>l")

nmap("<LEADER>w", "<C-w>w") -- 移至下个窗口

-- 窗口大小调整
nmap("<up>", "res -5<CR>")
nmap("<down>", "res +5<CR>")
nmap("<left>", ":vertical resize+5<CR>")
nmap("<right>", ":vertical resize-5<CR>")

-- 横竖切换
nmap("sh", "<C-w>t<C-w>K")
nmap("sv", "<C-w>t<C-w>H")

-- Tab management
nmap("tu", ":tabe<CR>")
nmap("tn", ":-tabnext<CR>")
nmap("ti", ":+tabnext<CR>")
nmap("tmn", ":-tabmove<CR>")
nmap("tmi", ":+tabmove<CR>")

-- terminal-mode
map("t", "<Esc>", "<C-\\><C-n>")
