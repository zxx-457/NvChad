-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {"html", "cssls", "clangd", "tsserver", "angularls"}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities
    }
end

-- angular
-- local angular_project_library_path = "C:/Users/zeng/AppData/Local/nvim-data/mason/packages/angular-language-server/node_modules/@angular/language-server/bin"
-- local ngcmd = {"ngserver", "--stdio", "--tsProbeLocations", angular_project_library_path, "--ngProbeLocations",
--                angular_project_library_path}
-- lspconfig.angularls.setup {
--     cmd = ngcmd,
--     on_new_config = function(new_config, new_root_dir)
--         new_config.cmd = ngcmd
--     end,
-- }
