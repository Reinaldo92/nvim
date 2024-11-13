local lsp = require("lsp-zero")

require("lspconfig").lua_ls.setup({
  single_file_support = true,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }, -- Adicione outras variáveis globais se necessário
      },
    },
  },
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls", -- Certifique-se de que o lua_ls será instalado pelo Mason
  },
  handlers = {
    lsp.default_setup,

    lua_ls = function()
      local lua_opts = lsp.nvim_lua_ls() -- Pega as configurações padrão do lsp-zero para o Lua
      lua_opts.settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }, -- Adicione outras variáveis globais aqui
          },
        },
      }
      require("lspconfig").lua_ls.setup(lua_opts) -- Aplica as configurações
    end,
  },
})

lsp.setup()
