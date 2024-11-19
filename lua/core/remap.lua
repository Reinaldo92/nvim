-- Definir líder
vim.g.mapleader = " "

-- Alias para simplificar mapeamentos
local remap = vim.keymap.set

-- Abrir explorador de arquivos
remap("n", "<leader>pv", vim.cmd.Ex)

-- Mover texto
remap("n", "<A-k>", ":move .-2<CR>==")
remap("n", "<A-j>", ":move .+1<CR>==")
remap({ "v", "x" }, "<A-j>", ":move '>+1<CR>gv=gv")
remap({ "v", "x" }, "<A-k>", ":move '<-2<CR>gv=gv")

-- Indentação
remap("v", "<", "<gv")
remap("v", ">", ">gv")

-- Substituir palavra selecionada sem afetar o registro
remap("v", "p", '"_dP')

-- Navegação entre buffers
remap("n", "<S-l>", ":bnext<CR>")
remap("n", "<S-h>", ":bprevious<CR>")

-- Navegação entre janelas
remap("n", "<C-h>", "<C-w>h")
remap("n", "<C-j>", "<C-w>j")
remap("n", "<C-k>", "<C-w>k")
remap("n", "<C-l>", "<C-w>l")

-- Redimensionar janelas
remap("n", "<C-Up>", ":resize -2<CR>")
remap("n", "<C-Down>", ":resize +2<CR>")
remap("n", "<C-Left>", ":vertical resize -2<CR>")
remap("n", "<C-Right>", ":vertical resize +2<CR>")

-- Copiar e colar para o clipboard do sistema
remap({ "n", "v", "o" }, "<leader>y", '"+y')
remap({ "n", "v", "o" }, "<leader>p", '"+p')

-- Movimentação no modo insert
remap("i", "<C-b>", "<ESC>^i")
remap("i", "<C-e>", "<End>")
remap("i", "<C-h>", "<Left>")
remap("i", "<C-j>", "<Down>")
remap("i", "<C-k>", "<Up>")
remap("i", "<C-l>", "<Right>")
remap("i", "<leader>;", "<ESC>A;")
remap("i", "jk", "<ESC>")

-- Ajustar rolagem
remap("n", "<C-d>", "<C-d>zz")
remap("n", "<C-u>", "<C-u>zz")
remap("n", "<C-j>", "<cmd>cprev<CR>zz")
remap("n", "<C-k>", "<cmd>cnext<CR>zz")

-- Melhor manipulação de tabs
remap("n", "<leader><TAB>", ":tabnext<CR>")
remap("n", "<leader><TAB>n", ":tabnew<CR>")
remap("n", "<S-TAB>", ":tabprevious<CR>")

-- Git atalhos
remap("n", "<leader>ga", ":Gwrite<CR>")
remap("n", "<leader>gb", ":Git blame<CR>")
remap("n", "<leader>gc", ":Git commit --verbose<CR>")
remap("n", "<leader>gd", ":Gvdiffsplit<CR>")
remap("n", "<leader>gll", ":Git pull<CR>")
remap("n", "<leader>gr", ":GRemove<CR>")
remap("n", "<leader>gs", ":Git<CR>")
remap("n", "<leader>gsh", ":Git push<CR>")

-- Outros atalhos úteis
remap("n", "J", "mzJ`z")
remap("n", "N", "Nzzzv")
remap("n", "n", "nzzzv")
remap("n", "Q", "<nop>")
remap("n", "<C-l>", ":nohl<CR>")
remap("n", "<leader>e", "<cmd>Explore<CR>")
remap("n", "<leader>F", vim.lsp.buf.format)
remap("n", "<leader>c", ":Commentary<CR>")
remap("n", "<leader>n", "<cmd> set nu! <CR>")
remap("n", "<leader>rn", "<cmd> set rnu! <CR>")
remap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
remap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
remap("n", "<leader>;", "<ESC>A;<ESC>")

-- Sessões
remap("n", "<leader>sc", ":CloseSession<CR>")
remap("n", "<leader>sd", ":DeleteSession<CR>")
remap("n", "<leader>so", ":OpenSession<Space>")
remap("n", "<leader>ss", ":SaveSession<Space>")

-- Operações de movimentação em bloco visual
remap("v", "J", ":move .+1<CR>==")
remap("v", "K", ":move .-2<CR>==")
remap("x", "<leader>p", [["_dP]])
