
local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    return
end

lsp_installer.on_server_ready(function(server)
    local opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
}
    if server.name == "rust_analyzer" then
        local rust_opts = require("user.lsp.settings.rust_analyzer")
        opts = vim.tbl_deep_extend("force", rust_opts, opts)
    end

    if server.name == "julials" then
        local julia_opts = require("user.lsp.settings.julials")
        opts = vim.tbl_deep_extend("force", julia_opts, opts)
    end

    if server.name == "lua_ls" then
        local lua_ls_opts = require("user.lsp.settings.lua_ls")
        opts = vim.tbl_deep_extend("force", lua_ls_opts, opts)
    end

    if server.name == "texlab" then
        local tex_opts = require("user.lsp.settings.texlab")
        opts = vim.tbl_deep_extend("force", tex_opts, opts)
    end

    if server.name == "bashls" then
        local bash_opts = require("user.lsp.settings.bashls")
        opts = vim.tbl_deep_extend("force", bash_opts, opts)
    end

    if server.name == "pyright" then
        local pyright_opts = require("user.lsp.settings.pyright")
        opts = vim.tbl_deep_extend("force", pyright_opts, opts)
    end

    if server.name == "r_language_server" then
        local r_opts = require("user.lsp.settings.r_language_server")
        opts = vim.tbl_deep_extend("force", r_opts, opts)
    end

    if server.name == "clangd" then
        local clangd = require("user.lsp.settings.clangd")
        opts = vim.tbl_deep_extend("force", clangd, opts)
    end
    server:setup(opts)
end)

--lsp_installer.settings({
--    ui = {
--        icons = {
--            server_installed = "✓",
--            server_pending = "➜",
--            server_uninstalled = "✗"
--        }
--    }
--})
