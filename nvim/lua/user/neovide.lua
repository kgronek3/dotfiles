if vim.g.neovide then
    ---- Padding in neovide window
    vim.g.neovide_padding_top = 10
    vim.g.neovide_padding_bottom = 10
    vim.g.neovide_padding_right = 10
    vim.g.neovide_padding_left = 10

    ---- Theme - set to mirror the system theme
    vim.g.neovide_theme = 'auto'

    ---- Disable Confirm Quit
    vim.g.neovide_confirm_quit = false

    ---- Cursor animation settings
    --vim.g.neovide_cursor_animation_length = 0.01
    --vim.g.neovide_cursor_trail_size = 1

    ---- Zoom out and zoom in controls
    vim.api.nvim_set_keymap("n", "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", { silent = true })
    vim.api.nvim_set_keymap("n", "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>", { silent = true })
    vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>", { silent = true })
    
    ---- Gui scale factor
    vim.g.neovide_scale_factor = 0.8

end
