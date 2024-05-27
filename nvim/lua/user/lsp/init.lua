
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()

-- suppress error messages from lang servers
vim.notify = function(msg, log_level, _opts)
    if msg:match("exit code") then return end
    if log_level == vim.log.levels.ERROR then
        vim.api.nvim_err_writeln(msg)
    else
    vim.api.nvim_echo({{msg}}, true, {})
    end
end

-- show diagnostics only in normal mode
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics,{ update_in_insert = false})

--vim.g.diagnostics_active = true
--function _G.toggle_diagnostics()
--  if vim.g.diagnostics_active then
--    vim.g.diagnostics_active = false
--    vim.lsp.diagnostic.clear(0)
--    vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
--  else
--    vim.g.diagnostics_active = true
--    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--      vim.lsp.diagnostic.on_publish_diagnostics, {
--        virtual_text = true,
--        signs = true,
--        underline = true,
--        update_in_insert = false,
--      }
--    )
--  end
--end
--
--vim.api.nvim_set_keymap('n', '<leader>tt', ':call v:lua.toggle_diagnostics()<CR>',  {noremap = true, silent = true})
--
