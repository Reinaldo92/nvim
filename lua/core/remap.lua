local remap = vim.keymap.set

vim.g.mapleader = " " --- Map leader

remap("n", "<leader>pv", vim.cmd.Ex) -- open file explorer

remap("n", "<A-k>", ":move .-2<CR>==") -- Move text down
remap("n", "<A-j>", ":move .+1<CR>==") -- Move text up
remap({ "v", "x" }, "<A-j>", ":move '>+1<CR>gv=gv") -- move line up
remap({ "v", "x" }, "<A-k>", ":move '<-2<CR>gv=gv") -- move line down

remap("v", "<", "<gv") -- Stay in indent mode
remap("v", ">", ">gv") -- Stay in indent mode

remap("v", "p", '"_dP') -- Replace a word with yanked text

remap("n", "<S-l>", ":bnext<CR>") -- Navigate next buffers
remap("n", "<S-h>", ":bprevious<CR>") -- Navigate previous buffers

remap("n", "<C-h>", "<C-w>h") -- window navigation
remap("n", "<C-j>", "<C-w>j") -- window navigation
remap("n", "<C-k>", "<C-w>k") -- window navigation
remap("n", "<C-l>", "<C-w>l") -- window navigation

remap({ "n", "v", "o" }, "<leader>y", '"+Y')
remap({ "n", "v", "o" }, "<leader>p", '"+P')

-- go to  beginning and end
remap("i", "<C-b>", "<ESC>^i")
remap("i", "<C-e>", "<End>")
remap("i", "<leader>;", "<ESC>A;")
remap("n", "<leader>;", "<ESC>A;<ESC>")

vim.keymap.set("i", "<C-b>", "<ESC>^i")
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "<C-e>", "<End>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<leader>;", "<ESC>A;")
vim.keymap.set("i", "jk", "<ESC>") -- Press jk fast to enter
vim.keymap.set("n", "<A-j>", ":move .+1<CR>==")              -- Move text up
vim.keymap.set("n", "<A-k>", ":move .-2<CR>==")              -- Move text down
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")     --???
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")     --???
vim.keymap.set("n", "<C-l>", ":nohl<CR>")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<Leader>ga", ":Gwrite<CR>")
vim.keymap.set("n", "<Leader>gb", ":Git blame<CR>")
vim.keymap.set("n", "<Leader>gc", ":Git commit --verbose<CR>")
vim.keymap.set("n", "<Leader>gd", ":Gvdiffsplit<CR>")
vim.keymap.set("n", "<Leader>gll", ":Git pull<CR>")
vim.keymap.set("n", "<Leader>gr", ":GRemove<CR>")
vim.keymap.set("n", "<Leader>gs", ":Git<CR>")
vim.keymap.set("n", "<Leader>gsh", ":Git push<CR>")
vim.keymap.set("n", "<S-TAB>", ":tabprevious<CR>") -- move tab previous
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")       -- Navigate previous buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")           -- Navigate next buffers
vim.keymap.set("n", "<leade>gx", " <Plug>NetrwBrowseX") -- open link in browser
vim.keymap.set("n", "<leader>;", "<ESC>A;<ESC>")
vim.keymap.set("n", "<leader><TAB>", ":tabnext<CR>") -- move tab next
vim.keymap.set("n", "<leader><TAB>n", ":tabnew<CR>") -- move tab next
vim.keymap.set("n", "<leader>F", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("n", "<leader>Y", 'gg"+yG')
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>c", ":Commentary<CR>")
vim.keymap.set("n", "<leader>e", "<cmd>Explore<CR>")
vim.keymap.set("n", "<leader>f", "<cmd>Neoformat<cr>")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") --???
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") --???
vim.keymap.set("n", "<leader>n", "<cmd> set nu! <CR>")
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)                -- open file explorer
vim.keymap.set("n", "<leader>rn", "<cmd> set rnu! <CR>")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>sc", ":CloseSession<CR>")
vim.keymap.set("n", "<leader>sd", ":DeleteSession<CR>")
vim.keymap.set("n", "<leader>so", ":OpenSession<Space>")
vim.keymap.set("n", "<leader>ss", ":SaveSession<Space>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("v", "<", "<gv")            -- Stay in indent mode
vim.keymap.set("v", ">", ">gv")            -- Stay in indent mode
vim.keymap.set("v", "J", ":move .+1<CR>==") -- move 1 line up
vim.keymap.set("v", "K", ":move .-2<CR>==")  -- move 1 line down
vim.keymap.set("v", "p", '"_dP')           -- Replace a word with yanked text
vim.keymap.set("x", "<leader>p", [["_dP]]) -- reatest remap ever
vim.keymap.set({ "n", "o" }, "<leader>P", '"+P')
vim.keymap.set({ "n", "o" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "v", "x" }, "<A-j>", ":move '>+1<CR>gv=gv") -- move line up
vim.keymap.set({ "v", "x" }, "<A-k>", ":move '<-2<CR>gv=gv") -- move line down

-- "(\d{2})/(\\d{2})/(\\d{4}) => $3-$2-$1"
