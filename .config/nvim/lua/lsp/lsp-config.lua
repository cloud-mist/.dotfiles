local lsp_installer = require("nvim-lsp-installer")
require("luasnip.loaders.from_vscode").lazy_load()
local servers = {
    sumneko_lua = require("lsp.lang.sumneko-lua"),
    pyright = require("lsp.lang.pyright"),
    html = require("lsp.lang.html"),
    zeta_note = require("lsp.lang.markdown"),
    gopls = require("lsp.lang.gopls")
}

local opts = {noremap = true, silent = true}
local function attach(_, bufnr)
    -- TODO: some mapping
end

for server_name, server_options in pairs(servers) do
    local server_available, server = lsp_installer.get_server(server_name)
    if server_available then
        server:on_ready(
            function()
                server_options.on_attach = attach
                server_options.flags = {
                    debounce_text_changes = 150
                }
                server:setup(server_options)
            end
        )
        if not server:is_installed() then
            vim.notify("Install Language Server : " .. server_name, "WARN", {title = "Language Servers"})
            server:install()
        end
    end
end
