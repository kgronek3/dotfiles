-- Dashboard settings: --------------------------
local status_ok, db = pcall(require, "dashboard")
if not status_ok then
  return
end

local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))

db.custom_header = {
"                               __                ",
"  ___     ___    ___   __  __ /\\_\\    ___ ___    ",
" / _ `\\  / __`\\ / __`\\/\\ \\/\\ \\\\/\\ \\  / __` __`\\  ",
"/\\ \\/\\ \\/\\  __//\\ \\_\\ \\ \\ \\_/ |\\ \\ \\/\\ \\/\\ \\/\\ \\ ",
"\\ \\_\\ \\_\\ \\____\\ \\____/\\ \\___/  \\ \\_\\ \\_\\ \\_\\ \\_\\",
" \\/_/\\/_/\\/____/\\/___/  \\/__/    \\/_/\\/_/\\/_/\\/_/",
"",
}

--db.custom_header = {
--"                __                ",
--"  ___   __  __ /\_\    ___ ___    ",
--" / _ `\/\ \/\ \\/\ \  / __` __`\  ",
--"/\ \/\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ",
--"\ \_\ \_\ \___/  \ \_\ \_\ \_\ \_\",
--" \/_/\/_/\/__/    \/_/\/_/\/_/\/_/",
--"",
--}

db.hide_statusline  = false
db.hide_tabline     = false

db.custom_footer = {
"",
"Loaded " .. plugins_count .. " plugins",
""}

db.custom_center = {
  {icon = ' ', desc = 'New file          ', shortcut = 'n', action ='enew'},
  {icon = ' ', desc = 'Last session      ', shortcut = 's', action ='SessionManager load_last_session'},
  {icon = ' ', desc = 'Recent files      ', shortcut = 'r', action ='Telescope oldfiles'},
--  {icon = ' ', desc = 'Bookmarks         ', shortcut = 'b', action ='Telescope marks'},
  {icon = ' ', desc = 'Find file         ', shortcut = 'f', action ='Telescope find_files'},
--  {icon = ' ', desc = 'Find word         ', shortcut = 'w', action ='Telescope live_grep'},
  {icon = ' ', desc = 'Configuration     ', shortcut = 'c', action ='e ~/.config/nvim/'},
  {icon = ' ', desc = 'Update            ', shortcut = 'u', action ='PackerUpdate'},
  {icon = ' ', desc = 'Exit              ', shortcut = 'e',
  action ='exit'},
}

--vim.api.nvim_create_autocmd("FileType", {
--  pattern = {"dashboard"},
--  callback = function()
--    vim.api.nvim_buf_set_keymap(0, "n", "n", "<cmd>enew<CR>",                 { noremap = true, silent = true})
--    vim.api.nvim_buf_set_keymap(0, "n", "s", "<cmd>SessionManager load_last_session<CR>",   { noremap = true, silent = true})
--    vim.api.nvim_buf_set_keymap(0, "n", "r", "<cmd>Telescope oldfiles<CR>",   { noremap = true, silent = true})
----    vim.api.nvim_buf_set_keymap(0, "n", "b", "<cmd>Telescope marks<CR>",      { noremap = true, silent = true})
--    vim.api.nvim_buf_set_keymap(0, "n", "f", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true})
----    vim.api.nvim_buf_set_keymap(0, "n", "w", "<cmd>Telescope live_grep<CR>",  { noremap = true, silent = true})
--    vim.api.nvim_buf_set_keymap(0, "n", "c", "<cmd>e ~/.config/nvim/<CR>",    { noremap = true, silent = true})
--    vim.api.nvim_buf_set_keymap(0, "n", "u", "<cmd>PackerUpdate<CR>",         { noremap = true, silent = true})
--    vim.api.nvim_buf_set_keymap(0, "n", "e", "<cmd>exit<CR>",                 { noremap = true, silent = true})
--  end
--})

vim.cmd[[highlight DashboardHeader      guifg=#fabd2f]]
vim.cmd[[highlight DashboardCenter      guifg=#b8bb26]]
vim.cmd[[highlight DashboardCenterIcon  guifg=#b8bb26]]
vim.cmd[[highlight DashboardShortCut    guifg=#fb4934]]
vim.cmd[[highlight DashboardFooter      guifg=#fabd2f]]
