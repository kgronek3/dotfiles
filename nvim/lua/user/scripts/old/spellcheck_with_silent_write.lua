function ToggleSpellCheckPL ()
  if vim.g.enable_spelunker_vim==1 then
    vim.g.enable_spelunker_vim=0
    vim.opt.spelllang="en"
    vim.cmd[[silent write %]]
    print("Wyłączono sprawdzanie pisowni po polsku")
  else
    vim.g.enable_spelunker_vim=1
    vim.opt.spelllang="pl"
    vim.cmd[[silent write %]]
    print("Włączono sprawdzanie pisowni po polsku")
  end
end
