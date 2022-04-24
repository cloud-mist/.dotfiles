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

            -- ##############
            -- ## Complete ##
            -- ##############

            -- LSP
            use "neovim/nvim-lspconfig"
            use "williamboman/nvim-lsp-installer"

            use "tami5/lspsaga.nvim"
            use "j-hui/fidget.nvim"
            use "ray-x/lsp_signature.nvim"

            -- Cmp
            use "hrsh7th/nvim-cmp"

            use "hrsh7th/cmp-path"
            use "hrsh7th/cmp-buffer"
            use "hrsh7th/cmp-cmdline"

            use "hrsh7th/cmp-nvim-lsp"
            use "hrsh7th/cmp-nvim-lua"

            use "onsails/lspkind-nvim"

            -- Snip
            use "L3MON4D3/LuaSnip"
            use "saadparwaiz1/cmp_luasnip"
            use "rafamadriz/friendly-snippets"

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
            --            use "skywind3000/vim-terminal-help"
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
            max_jobs = 8,
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
