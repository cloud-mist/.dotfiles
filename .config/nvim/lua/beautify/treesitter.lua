local configs = require("nvim-treesitter.configs")
configs.setup {
    ensure_installed = {
        "c",
        "cpp",
        "go",
        "gomod",
        "lua",
        "python",
        "haskell",
        "html",
        "css",
        "rust",
        "json",
        "yaml",
        "toml",
        "bash",
        "fish",
        "help",
        "rust",
        "ruby"
    },
    sync_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    indent = {enable = true, disable = {"yaml"}},
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil
    }
}
