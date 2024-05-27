function ToggleSpellCheckPL ()
  if vim.g.enable_spelunker_vim==1 then
    vim.g.enable_spelunker_vim=0
    vim.opt.spelllang="en"
    print("Wyłączono sprawdzanie pisowni po polsku")
  else
    vim.g.enable_spelunker_vim=1
    vim.opt.spelllang="pl"
    print("Włączono sprawdzanie pisowni po polsku")
  end
end
