-- Global values
local global = vim.g

global.netrw_banner = 0

-- setting explicitly makes start-up faster
global.loaded_python_provider = 0
global.python3_host_prog = "/usr/bin/python3"
global.session_autoload = "no"
global.session_autosave = "no"
global.session_command_aliases = 1
global.session_directory = os.getenv("HOME") .. "~/.cache/nvim/session"

-- Options
local opt = vim.opt

opt.backup = false
opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
opt.colorcolumn = "80"        -- show vertical line
opt.cursorline = true         -- highlight the current line
opt.fileencoding = "utf-8"    -- the encoding written to a file
opt.foldenable = true
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevel = 2
opt.foldlevelstart = 99   -- start out with everything unfolded
opt.foldmethod = "indent" -- "expr"
opt.foldnestmax = 3       --Only fold up to three nested levels.
opt.foldopen = { "block", "hor", "insert", "jump", "mark", "percent", "quickfix", "search", "tag", "undo" }
opt.hidden = true         -- Required to keep multiple buffers open multiple buffers
opt.lazyredraw = true
opt.mouse = ""            -- disable mouse to be used in neovim
opt.number = true         -- show number lines
opt.pumheight = 10
opt.shiftwidth = 4
opt.showmode = false
opt.sidescrolloff = 5
opt.smartcase = true -- smart case
opt.smartindent = true
opt.softtabstop = 4
opt.splitbelow = false -- force all horizontal splits to go below current window
opt.splitright = true  -- force all vertical splits to go to the right of current window
opt.swapfile = false
opt.tabstop = 4
opt.termguicolors = true
opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir"
opt.undofile = true
opt.updatetime = 100 -- default 50
opt.wrap = false     -- display lines as one long line
vim.cmd("set t_Co=256")

vim.filetype.add({
    pattern = {
        [".*%.blade%.php"] = "blade",
    },
})
