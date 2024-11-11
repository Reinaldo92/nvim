local builtin = require("telescope.builtin")
local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
	defaults = {
		--        prompt_prefix = " ",
		--        selection_caret = " ",
		path_display = { "truncate" },
		vimgrep_arguments = {
			"rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		},
		initial_mode = "insert",
		selection_strategy = "reset",
		sorting_strategy = "ascending",
		layout_strategy = "horizontal",
		layout_config = {
			horizontal = {
				prompt_position = "top",
				preview_width = 0.55,
				results_width = 0.8,
			},
			vertical = {
				mirror = false,
			},
			width = 0.87,
			height = 0.80,
			preview_cutoff = 120,
		},
		file_sorter = require("telescope.sorters").get_fuzzy_file,
		file_ignore_patterns = {
			"node_modules",
			".git",
			"vendor",
			".git/*",
			".svg",
			".png",
			".jpg",
			".pdf",
		},
		generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
		mappings = {
			i = {
				["<C-n>"] = actions.cycle_history_next,
				["<C-p>"] = actions.cycle_history_prev,

				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,

				["<C-c>"] = actions.close,

				["<Down>"] = actions.move_selection_next,
				["<Up>"] = actions.move_selection_previous,

				["<CR>"] = actions.select_default,
				["<C-x>"] = actions.select_horizontal,
				["<C-v>"] = actions.select_vertical,
				["<C-t>"] = actions.select_tab,

				["<C-u>"] = actions.preview_scrolling_up,
				["<C-d>"] = actions.preview_scrolling_down,

				["<PageUp>"] = actions.results_scrolling_up,
				["<PageDown>"] = actions.results_scrolling_down,

				["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
				["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
				["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
				["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
				["<C-l>"] = actions.complete_tag,
				["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
			},

			n = {
				["<esc>"] = actions.close,
				["<CR>"] = actions.select_default,
				["<C-x>"] = actions.select_horizontal,
				["<C-v>"] = actions.select_vertical,
				["<C-t>"] = actions.select_tab,

				["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
				["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
				["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
				["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

				["j"] = actions.move_selection_next,
				["k"] = actions.move_selection_previous,
				["H"] = actions.move_to_top,
				["M"] = actions.move_to_middle,
				["L"] = actions.move_to_bottom,

				["<Down>"] = actions.move_selection_next,
				["<Up>"] = actions.move_selection_previous,
				["gg"] = actions.move_to_top,
				["G"] = actions.move_to_bottom,

				["<C-u>"] = actions.preview_scrolling_up,
				["<C-d>"] = actions.preview_scrolling_down,

				["<PageUp>"] = actions.results_scrolling_up,
				["<PageDown>"] = actions.results_scrolling_down,

				["?"] = actions.which_key,
			},
		},
	},
	pickers = {
		--        find_files = {
		--            theme = "dropdown",
		--        },
		-- Default configuration for builtin pickers goes here:
		-- picker_name = {
		--   picker_config_key = value,
		--   ...
		-- }
		-- Now the picker_config_key will be applied every time you call this
		-- builtin picker
	},
	extensions = {
		-- project = {
		--     base_dirs = {
		--         { path = "~/Github/dot-reinaldo92" },
		--         { path = "~/Github/dpu-observatorio-estrategico", max_depth = 2 },
		--     },
		-- },
		preview = false,
	},
})

vim.g.theme_switcher_loaded = true

-- vim.keymap.set("n", "<C-P>", ":Telescope find_files hidden=true<CR>")
-- vim.keymap.set("n", "<C-a>", ":Telescope live_grep<CR>")
-- vim.keymap.set("n", "<leader>b", ":Telescope buffers<CR>")
-- vim.keymap.set("n", "<A-f>", ":Telescope current_buffer_fuzzy_find<CR>")

vim.keymap.set("n", "<leader>ff", ":Telescope find_files <CR>")
vim.keymap.set("n", "<leader>fa", ":Telescope find_files follow=true no_ignore=true hidden=true <CR>")
vim.keymap.set("n", "<leader>fw", ":Telescope live_grep <CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers <CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags <CR>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles <CR>")
vim.keymap.set("n", "<leader>tk", ":Telescope keymaps <CR>")
vim.keymap.set("n", "<leader>cm", ":Telescope git_commits <CR>")
vim.keymap.set("n", "<leader>gt", ":Telescope git_status <CR>")
vim.keymap.set("n", "<leader>g", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
