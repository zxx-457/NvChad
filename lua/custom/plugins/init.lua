return {
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = { --
        "lua-language-server",
        "stylua", -- lua
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "emmet-ls",
        "json-lsp",
        "angular-language-server", -- web
        "shfmt",
        "shellcheck", -- shell
      },
    },
    cmd = require("core.lazy_load").mason_cmds,
    config = function()
      require "plugins.configs.mason"
    end,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["kylechui/nvim-surround"] = {
    tag = "*",
    config = function()
      require "custom.plugins.surround"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["Olical/conjure"] = {
    setup = function()
      require "custom.plugins.conjure"
    end,
  },
  ["radenling/vim-dispatch-neovim"] = {},
  ["tpope/vim-dispatch"] = {
    setup = function()
      require "custom.plugins.dispatch"
    end,
  },
  ["dag/vim-fish"] = {
    setup = function() end,
  },
  ["ahmedkhalf/project.nvim"] = {
    config = function()
      require("custom.plugins.project")
    end,
  },
}
