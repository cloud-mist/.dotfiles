local options = {
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    autoindent = true,
    scrolloff = 8,
    --
    number = true,
    relativenumber = true,
    --
    wrap = true,
    showcmd = true,
    wildmenu = true,
    showmode = false,
    hlsearch = true,
    ignorecase = true,
    smartcase = true,
    --
    fileencodings = {
        "ucs - bom",
        "utf - 8",
        "utf - 16",
        "gbk",
        "big5",
        "gb18030",
        "latin1"
    }
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd([[
let &t_ut=''

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
]])
