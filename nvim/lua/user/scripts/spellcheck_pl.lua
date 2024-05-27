function ToggleSpellCheckPL ()
  if vim.opt.spell:get() then
    vim.opt.spell=false
    vim.opt.spelllang="en"
    print("Wyłączono sprawdzanie pisowni po polsku")
  else
    vim.opt.spell=true
    vim.opt.spelllang="pl"
    print("Włączono sprawdzanie pisowni po polsku")
  end
end
