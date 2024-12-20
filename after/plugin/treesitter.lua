local status_ok, configs = pcall(require, "nvim-treesitter.configs")

if not status_ok then
	return
end

configs.setup({
	ensure_installed = {
		"bash",
		"c",
		"css",
		"go",
		"java",
		"javascript",
		"json",
		"lua",
		"php",
		"python",
		"phpdoc",
		"rust",
		"tsx",
		"htmldjango",
		"typescript",
		"yaml",
		"vim",
	}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	sync_install = true, -- install languages synchronously (only applied to `ensure_installed`)
	ignore_install = { "" }, -- List of parsers to ignore installing
	autopairs = {
		enable = false,
	},
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "php", "lua" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = { "php" },
		use_languagetree = true,
	},
	indent = { enable = true, disable = { "yaml" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
})
