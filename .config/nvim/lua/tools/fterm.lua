require "FTerm".setup(
    {
        border = "double",
        dimensions = {
            height = 0.8,
            width = 0.8
        }
    }
)
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map("n", "<A-=>", '<CMD>lua require("FTerm").toggle()<CR>', opts)
map("t", "<A-=>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
