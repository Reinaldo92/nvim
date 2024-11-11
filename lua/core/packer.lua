local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here
    use "wbthomason/packer.nvim" --[editor]Have packer manage itself

    -- Theme
	use 'Mofiqul/adwaita.nvim'
	use { "ellisonleao/gruvbox.nvim" }

    use "nvimtools/none-ls.nvim"

    use "norcalli/nvim-colorizer.lua" -- show colors #ffffff #109010
    use { "nvim-telescope/telescope.nvim", tag = "0.1.x", requires = { { "nvim-lua/plenary.nvim" } } } --[editor] File explorer
    use "editorconfig/editorconfig-vim" --[editor]
    use "lewis6991/gitsigns.nvim" --[git]
    use "tpope/vim-fugitive" --[git]
    use "tpope/vim-commentary" --[editor] comentay code
    use "tpope/vim-dotenv" --[editor]
    use "folke/trouble.nvim" --[editor] Show error
    use "mbbill/undotree" --[editor]
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" } -- syntax highlight
    use "folke/todo-comments.nvim" --[editor]
    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- LSP Support
            { "neovim/nvim-lspconfig" },

            -- Autocompletion
            { "L3MON4D3/LuaSnip" },
            { "hrsh7th/cmp-buffer" }, --[cmp] buffer completions
            { "hrsh7th/cmp-cmdline" }, --[cmp] cmdline completions
            { "hrsh7th/cmp-nvim-lsp" }, --[cmp] 'LSP source for nvim-cmp
            { "hrsh7th/cmp-nvim-lsp-signature-help" },
            { "hrsh7th/cmp-nvim-lua" },
            { "hrsh7th/cmp-path" }, --[cmp] path completions
            { "hrsh7th/nvim-cmp" },
            { "ray-x/lsp_signature.nvim" },
            { "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" },
        },
    }

    --- SONARLINT
    use "https://gitlab.com/schrieveslaach/sonarlint.nvim"

    --- MARKDOWN
    use {
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    }

    ---- RUST
    -- use { 'rust-lang/rust.vim' }

    ---- GO
    --  use { 'leoluz/nvim-dap-go' }

    --- PYTHON
    -- use('mfussenegger/nvim-dap-python')
    -- use('nvim-neotest/neotest')
    -- use('nvim-neotest/neotest-python')

	--- SQL
	use { 'nanotee/sqls.nvim', run = ":npn install" }

    ---- PHP
    use "stephpy/vim-php-cs-fixer"
    use "haringsrob/laravel-dev-tools"

    ---- JavaScript

    ---- Java
    use { "mfussenegger/nvim-jdtls" }

    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
