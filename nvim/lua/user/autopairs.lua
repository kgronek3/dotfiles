-- Autopairs settings: -----------------------------------
local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
  return
end

npairs.setup{
  check_ts = false,
  disable_filetype = { "TelescopePrompt" },
  disable_in_macro = false,  -- disable when recording or executing a macro
  disable_in_visualblock = false, -- disable when insert after visual block mode
  ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]],"%s+", ""),
  enable_moveright = true,
  enable_afterquote = true,  -- add bracket pairs after quote
  enable_check_bracket_line = true,  --- check bracket in same line
  map_bs = true,  -- map the <BS> key
  map_c_h = false,  -- Map the <C-h> key to delete a pair
  map_c_w = false, -- map <c-w> to delete a pair if possible
  fast_wrap = {
     map = '<M-e>',
     chars = { '{', '[', '(', '"', "'" },
     pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
     offset = 0, -- Offset from pattern match
     end_key = '$',
     keys = 'qwertyuiopzxcvbnmasdfghjkl',
     check_comma = true,
     highlight = 'PmenuSel',
     highlight_grey='LineNr'
  },
}

