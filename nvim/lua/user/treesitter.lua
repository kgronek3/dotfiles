-- Treesitter settings: ---------------------------
local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

treesitter.setup {

  autopairs = {
    enable = true,
  },
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = "all",

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing
  ignore_install = { "latex" },

  highlight = {
    enable = true, -- `false` will disable the whole extension
    disable = { "latex" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = false,
    disable = { "python", "julia"}
  },
  ranbow = {
    enable = true,
    --disable = { "" },
    extended_mode = true,
    max_file_lines = nil,
  }
}
