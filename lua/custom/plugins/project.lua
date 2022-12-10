local p = require "project_nvim"

p.setup {
  patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" , "project.clj"},
  manual_mode = true,
}

