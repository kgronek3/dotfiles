-- General options: ----------------
local opt = vim.opt
local wo = vim.wo

opt.fileencoding = "utf-8"
opt.spell = false
opt.errorbells = false
opt.vb = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.number = true
opt.smartcase = true
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = os.getenv("HOME") .. '/.config/nvim/undodir'
opt.incsearch = true
opt.linebreak = true
opt.termguicolors = true
opt.clipboard = "unnamedplus" --xclip
