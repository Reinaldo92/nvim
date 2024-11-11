require("lspconfig").intelephense.setup({
	single_file_support = true,
	init_options = {
		globalStoragePath = os.getenv("HOME") .. "~/.local/share/nvim/mason/bin/intelephense",
	},
})
