--local lsp = require "lsp-zero"
--
--require("mason").setup {
--    ui = {
--        icons = {
--            package_installed = "✓",
--            package_pending = "➜",
--            package_uninstalled = "✗",
--        },
--    },
--}
--
--require("mason-lspconfig").setup {
--    ensure_installed = {
--        "lua_ls",
--    },
--    handlers = {
--        lsp.default_setup,
--        lua_ls = function()
--            local lua_opts = lsp.nvim_lua_ls()
--            require("lspconfig").lua_ls.setup(lua_opts)
--        end,
--    },
--}
