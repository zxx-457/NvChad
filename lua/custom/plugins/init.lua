return {
    ["williamboman/mason.nvim"] = {
        override_options = {
            ensure_installed = { --
            "lua-language-server", "stylua", -- lua
            "css-lsp", "html-lsp", "typescript-language-server", "deno", "emmet-ls", "json-lsp", -- web
            "shfmt", "shellcheck" -- shell
            }
        },
        cmd = require("core.lazy_load").mason_cmds,
        config = function()
            require "plugins.configs.mason"
        end
    },
    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end
    },
    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
            require "custom.plugins.null-ls"
        end
    }
}
