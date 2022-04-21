local lspkind = require("lspkind")
local cmp = require("cmp")

cmp.setup(
    ---@diagnostic disable-next-line: redundant-parameter
    {
        -- 指定补全引擎
        snippet = {
            expand = function(args)
                -- 使用 vsnip 引擎
                vim.fn["vsnip#anonymous"](args.body)
            end
        },
        -- 指定补全源（安装了补全源插件就在这里指定）
        sources = cmp.config.sources(
            {
                {name = "vsnip"},
                {name = "nvim_lsp"},
                {name = "path"},
                {name = "buffer"},
                {name = "cmdline"},
                {name = "spell"}
            }
        ),
        -- 格式化补全菜单
        formatting = {
            format = lspkind.cmp_format(
                {
                    with_text = true,
                    maxwidth = 50,
                    before = function(entry, vim_item)
                        vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
                        return vim_item
                    end
                }
            )
        },
        -- 对补全建议排序
        sorting = {
            comparators = {
                cmp.config.compare.offset,
                cmp.config.compare.exact,
                cmp.config.compare.score,
                cmp.config.compare.recently_used,
                require("cmp-under-comparator").under,
                cmp.config.compare.kind,
                cmp.config.compare.sort_text,
                cmp.config.compare.length,
                cmp.config.compare.order
            }
        },
        -- 绑定补全相关的按键
        mapping = {
            -- 上一个
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),
            -- 下一个
            ["<Tab>"] = cmp.mapping.select_next_item(),
            -- 选择补全
            ["<CR>"] = cmp.mapping.confirm(),
            --  出现或关闭补全
            ["<C-o>"] = cmp.mapping(
                {
                    i = function()
                        if cmp.visible() then
                            cmp.abort()
                        else
                            cmp.complete()
                        end
                    end,
                    c = function()
                        if cmp.visible() then
                            cmp.close()
                        else
                            cmp.complete()
                        end
                    end
                }
            ),
            -- 类似于 IDEA 的功能，如果没进入选择框，tab
            -- 会选择下一个，如果进入了选择框，tab 会确认当前选择
            ["<C-e>"] = cmp.mapping(
                function(fallback)
                    if cmp.visible() then
                        local entry = cmp.get_selected_entry()
                        if not entry then
                            cmp.select_next_item({behavior = cmp.SelectBehavior.Select})
                        end
                        cmp.confirm()
                    else
                        fallback()
                    end
                end,
                {"i", "s", "c"}
            )
        }
    }
)
-- 命令行 / 模式提示
cmp.setup.cmdline(
    "/",
    {
        sources = {
            {name = "buffer"}
        }
    }
)
-- 命令行 : 模式提示
cmp.setup.cmdline(
    ":",
    {
        sources = cmp.config.sources(
            {
                {name = "path"}
            },
            {
                {name = "cmdline"}
            }
        )
    }
)
