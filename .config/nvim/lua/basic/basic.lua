local options = {
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    --
    expandtab = true,
    autoindent = true,
    scrolloff = 8,
    laststatus = 3, -- Only global statusline
    --
    number = true,
    relativenumber = true,
    --
    wrap = true,
    showcmd = true,
    wildmenu = true,
    showmode = true,
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
