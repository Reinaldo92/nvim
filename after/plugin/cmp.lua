local cmp = require("cmp")
local luasnip = require("luasnip")

-- Configuração do lsp_signature
require("lsp_signature").setup()

-- Carrega os snippets do VSCode para o luasnip
require("luasnip/loaders/from_vscode").load()

-- Definindo source_mapping
local source_mapping = {
    nvim_lsp = "[LSP]",
    vsnip = "[VSnip]",
    nvim_lsp_signature_help = "[SigHelp]",
    nvim_lua = "[Lua]",
    html_css = "[HTML/CSS]",
    path = "[Path]",
    luasnip = "[LuaSnip]",
    cmp_tabnine = "[Tabnine]",
    buffer = "[Buffer]",
}

-- Configuração do cmp
cmp.setup({
  snippet = {
    expand = function(args)
      -- Use o luasnip para expandir os snippets
      luasnip.lsp_expand(args.body)
    end,
  },
  formatting = {
    format = function(entry, vim_item)
      -- Tentativa de carregar o lspkind
      local lspkind_ok, lspkind = pcall(require, "lspkind")
      if not lspkind_ok then
        -- Se lspkind não estiver presente, usa os ícones definidos em kind_icons
        vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind)
        -- Adiciona o menu da fonte
        vim_item.menu = source_mapping[entry.source.name]
        return vim_item
      else
        -- Se lspkind estiver presente, utiliza o formato do lspkind
        vim_item.menu = source_mapping[entry.source.name]
        return lspkind.cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
      end
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirmar o item selecionado
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "vsnip" }, -- Para usuários do vsnip
    { name = "nvim_lsp_signature_help" },
    { name = "nvim_lua" },
    { name = "html-css" },
    { name = "path" },
    { name = "luasnip" },
    { name = "cmp_tabnine" },
  }, {
    { name = "buffer" },
  }),
})

-- Configuração específica para o tipo de arquivo 'gitcommit'
cmp.setup.filetype("gitcommit", {
  sources = cmp.config.sources({
    { name = "git" }, -- Certifique-se de que o cmp-git esteja instalado se for usar essa fonte
  }, {
    { name = "buffer" },
  }),
})

-- Configuração para o comando de busca no cmdline
cmp.setup.cmdline({ "/", "?" }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" },
  },
})

-- Configuração para o cmdline de comandos
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" },
  }, {
    { name = "cmdline" },
  }),
})

-- Capabilities para o nvim-lsp
local capabilities = require("cmp_nvim_lsp").default_capabilities()
