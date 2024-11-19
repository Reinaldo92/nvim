local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print("Installing packer... Restart Neovim after installation.")
    vim.cmd([[packadd packer.nvim]])
end

-- Reload Neovim on saving this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call to load packer
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Packer configuration
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Plugin installation
return packer.startup(function(use)
    -- Core plugins
    use("wbthomason/packer.nvim") -- Packer manages itself

    -- General utilities
    use("nvimtools/none-ls.nvim")
    use("norcalli/nvim-colorizer.lua") -- Display colors like #ffffff
    use({ "nvim-telescope/telescope.nvim", tag = "0.1.x", requires = { "nvim-lua/plenary.nvim" } })
    use("editorconfig/editorconfig-vim")

    -- Git plugins
    use("lewis6991/gitsigns.nvim")
    use("tpope/vim-fugitive")

    -- Editing enhancements
    use("tpope/vim-commentary")
    use("tpope/vim-dotenv")
    use("folke/trouble.nvim")
    use("mbbill/undotree")
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("folke/todo-comments.nvim")

    -- LSP and autocompletion
    use("onsails/lspkind.nvim")
    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v4.x",
        requires = {
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            { "neovim/nvim-lspconfig" },
            { "L3MON4D3/LuaSnip" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-cmdline" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lsp-signature-help" },
            { "hrsh7th/cmp-nvim-lua" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/nvim-cmp" },
            { "ray-x/lsp_signature.nvim" },
            { "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" },
        },
    })

    -- Language-specific plugins
    use("https://gitlab.com/schrieveslaach/sonarlint.nvim")
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    })
    use({ "nanotee/sqls.nvim", run = ":npm install" })
    use("stephpy/vim-php-cs-fixer")
    use("haringsrob/laravel-dev-tools")
    use({ "mfussenegger/nvim-jdtls" }) -- Java support

    -- Ensure packer sync if bootstrap
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
