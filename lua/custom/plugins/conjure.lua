
local cmd = vim.cmd
vim.cmd "let maplocalleader=' '"

-- keymapping
local c = "let g:conjure#mapping#"

local setups = {
  "log_split='lh'",
  "log_vsplit='lv'",
  "log_tab='lt'",
  "log_toggle='l'",
  "log_reset_hard='lr'",
  "log_close_visible='lq'",
  "log_eval_marked_form='m'",
}

local ignores = {
  "log_buf",
  "log_reset_soft",
  "def_word",
}

-- setups
for _,v in ipairs(setups) do
  cmd(c..v)
end

for _,v in ipairs(ignores) do
  cmd(c..v.."=v:false")
end

cmd "let g:conjure#highlight#enabled='v:true'"
cmd "let g:conjure#log#hud#width='0.4'"
