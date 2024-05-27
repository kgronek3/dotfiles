-- Mapping settings: -------------------------
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

-- Remap space as Leader
--keymap("","<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes:
-- normal mode       = "n",
-- insert mode       = "i",
-- visual mode       = "v",
-- visual block mode = "x",
-- term mode         = "t",
-- command mode      = "c",

keymap("n", "<C-H>", "<C-W>h", opts)
keymap("n", "<C-J>", "<C-W>j", opts)
keymap("n", "<C-K>", "<C-W>k", opts)
keymap("n", "<C-L>", "<C-W>l", opts)

keymap("n", "<A-j>", "gj", opts)
keymap("n", "<A-k>", "gk", opts)

--nmap <Leader>ss :<C-u>SessionSave<CR>
--nmap <Leader>sl :<C-u>SessionLoad<CR>

-- Markdown preview:
--keymap("n", "<C-f>", "<cmd>MarkdownPreview<CR>", opts)
--keymap("n", "<C-a>", "<cmd>MarkdownPreviewStop<CR>", opts)
keymap("n", "<C-s>", "<cmd>MarkdownPreviewToggle<CR>", opts)

-- Dashboard commands:
keymap("n", "<leader>cn", "<cmd>enew<CR>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope oldfiles<CR>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope marks<CR>", opts)
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fa", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>fv", "<cmd>e $MYVIMRC<CR>", opts)
keymap("n", "<leader>fx", "<cmd>exit<CR>", opts)

-- NvimTree:
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>rr", ":NvimTreeRefresh<CR>", opts)
keymap("n", "<leader>b", ":NvimTreeFindFile<CR>", opts)
keymap("n", "<leader>re", ":NvimTreeResize +2<CR>",opts)
keymap("n", "<leader>rd", ":NvimTreeResize -2<CR>",opts)

-- Bufferline:
--keymap("n", "<S-l>", "<cmd>bnext<CR>", opts)
--keymap("n", "<S-h>", "<cmd>bprevious<CR>", opts)
keymap("n", "<A-l>", "<cmd>bnext<CR>", opts)
keymap("n", "<A-h>", "<cmd>bprevious<CR>", opts)
keymap("n", "<leader>q", "<cmd>Bdelete!<CR>", opts)

-- Mappings for scripts
keymap("n", "<leader>l", "<cmd>lua ToggleSpellCheckPL()<CR>", opts)

