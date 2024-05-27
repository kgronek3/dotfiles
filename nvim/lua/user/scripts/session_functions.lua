function SaveSession ()
  vim.api.nvim_cmd('mks! $HOME/.config/nvim/sessions/last_session.vim')
end

function LoadSession ()
  vim.api.nvim_cmd('so $HOME/.config/nvim/sessions/last_session.vim')
end

vim.api.nvim_create_autocmd("VimLeave", {pattern = "*", callback = SaveSession})
