local cmp = require("cmp")
local lspkind = require("lspkind")
local luasnip = require("luasnip")
vim.opt.completeopt = {"menu", "menuone", "noselect"}

local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

--
cmp.setup(
    {
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body)
            end
        },
        sources = {
            {name = "nvim_lua"},
            {name = "luasnip"},
            {name = "nvim_lsp"},
            {name = "path"},
            {name = "buffer"},
            {name = "cmdline"}
        },
        formatting = {
            format = lspkind.cmp_format(
                {
                    with_text = true,
                    menu = {
                        nvim_lua = "[Api]",
                        nvim_lsp = "[LSP]",
                        luasnip = "[Snip]",
                        path = "[Path]",
                        buffer = "[Buf]",
                        cmdline = "[cmd]"
                    }
                }
            )
        },
        mapping = {
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),
            ["<Tab>"] = cmp.mapping.select_next_item(),
            ["<C-s>"] = cmp.mapping.scroll_docs(-4),
            ["<C-t>"] = cmp.mapping.scroll_docs(4),
            ["<CR>"] = cmp.mapping.confirm {
                behavior = cmp.ConfirmBehavior.Replace,
                select = true
            },
            ["<C-e>"] = cmp.mapping(
                function(fallback)
                    if luasnip.expand_or_locally_jumpable() then
                        luasnip.expand_or_jump()
                    elseif has_words_before() then
                        cmp.complete()
                    else
                        fallback()
                    end
                end,
                {"i", "s"}
            ),
            ["<C-n>"] = cmp.mapping(
                function(fallback)
                    if luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end,
                {"i", "s"}
            )
        }
    }
)
