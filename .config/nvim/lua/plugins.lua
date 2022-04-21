vim.cmd [[packadd packer.nvim]]

return require("packer").startup(
    {
        function()
            use "wbthomason/packer.nvim"

            --
            -- Beautify
            --
            use "folke/tokyonight.nvim"
            use {
                "nvim-lualine/lualine.nvim",
                requires = {"kyazdani42/nvim-web-devicons", opt = true}
            }
            use "luochen1990/rainbow"
            use "glepnir/dashboard-nvim"
            use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

            --
            -- complete
            --
            use "neovim/nvim-lspconfig"
            use "williamboman/nvim-lsp-installer"
            use "tami5/lspsaga.nvim"
            use "j-hui/fidget.nvim"
            use "ray-x/lsp_signature.nvim"
            use "theniceboy/vim-snippets"

            use {
                "hrsh7th/nvim-cmp", -- 代码补全核心插件，下面都是增强补全的体验插件
                requires = {
                    {"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
                    {"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
                    {"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
                    {"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
                    {"hrsh7th/cmp-path"}, -- 路径补全
                    {"hrsh7th/cmp-buffer"}, -- 缓冲区补全
                    {"hrsh7th/cmp-cmdline"}, -- 命令补全
                    {"f3fora/cmp-spell"}, -- 拼写建议
                    {"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
                    {"lukas-reineke/cmp-under-comparator"} -- 让补全结果的排序更加智能
                }
            }

            --     use {'neoclide/coc.nvim', branch = 'release'}

            -- language
            use "rust-lang/rust.vim"
            use "lervag/vimtex"
            use "fatih/vim-go"
            use "iamcco/markdown-preview.nvim"
            use "ekalinin/Dockerfile.vim"
            use "dag/vim-fish"
            use "wlangstroth/vim-racket"
            use "neovimhaskell/haskell-vim"

            -- tool
            use "skywind3000/vim-terminal-help"
            use "jiangmiao/auto-pairs"
            use "tpope/vim-surround"
            use "gcmt/wildfire.vim"
            use {
                "lewis6991/gitsigns.nvim",
                requires = {
                    "nvim-lua/plenary.nvim"
                }
            }
            use "junegunn/fzf"
            use "junegunn/fzf.vim"
            use "numToStr/FTerm.nvim"
            use "sbdchd/neoformat"

            -- note
            --		use {'nvim-orgmode/orgmode', config = function()
            --			require('orgmode').setup{}
            --			end}
            --		use 'lukas-reineke/headlines.nvim'
            --		use 'akinsho/org-bullets.nvim'
            --		use 'dhruvasagar/vim-table-mode'
        end,
        config = {
            max_jobs = 16,
            git = {
                default_url_format = "https://github.com/%s"
            },
            display = {
                open_fn = function()
                    return require("packer.util").float({border = "single"})
                end
            }
        }
    }
)
