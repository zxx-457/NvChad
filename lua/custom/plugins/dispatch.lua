
local autocmd = vim.api.nvim_create_autocmd
local cmd = vim.cmd

cmd "command Repl Start! lein repl"
cmd "command Fmt Dispatch! lein cljfmt fix"

autocmd("BufWritePost", {
  pattern = "*.clj",
  command = "Fmt"
})
