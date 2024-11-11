local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- HIGHLIGHT YANKED TEXT
autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 400 })
	end,
})

-- SET SPELL CHECKING FOR TEXT AND MARKDOWN FILES
autocmd("BufEnter", {
	pattern = { "text", "markdown", "gitcommit" },
	callback = function()
		vim.api.nvim_win_set_option(0, "spell", true)
	end,
})

vim.cmd([[ match IncSearch '\s\+$' ]])

vim.cmd([[
    augroup _general_settings
        autocmd!
        autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
       " autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200})
        autocmd BufWinEnter * :set formatoptions-=cro
        autocmd FileType qf set nobuflisted
    augroup end

    augroup _auto_resize
        autocmd!
        autocmd VimResized * tabdo wincmd =
    augroup end

    augroup _git
        autocmd!
        autocmd FileType gitcommit setlocal wrap
        autocmd FileType gitcommit setlocal spell
        autocmd FileType gitcommit setlocal spelllang=pt_BR
    augroup end

    autocmd VimResized * :wincmd =

    "Remove white space
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufWritePre * %s/\n\+\%$//e
    autocmd BufWritePre *.[ch] %s/\%$/\r/e
    "autocmd BufWritePre * %s/\s\+$//e

    "Remove sequence 2 lines empty
    autocmd BufWritePre * %s/\(^\n\{2,}\)/\r/e
    autocmd BufRead * %s/\(^\n\{2,}\)/\r/e

    autocmd BufRead * nohlsearch
    autocmd BufWritePre * nohlsearch

    " autocmd BufRead,BufNewFile Xresources,Xdefaults,xresources,xdefaults set filetype=xdefaults
    " autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb %
    autocmd FocusLost * silent! wa

    "set autowriteall

]])

-- restore cursor position (" -- mark of last cursor position)
augroup("VimStartup", {})

autocmd("BufReadPost", {
	pattern = "*",
	group = "VimStartup",
	desc = "Restore position from the previous editing when entering reading buffer",
	command = [[if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit' | exe "normal! g`\"" | endif]],
})
-- BASH - AUTO PREENCHE ARQUIVOS .SH QUE NÃO EXISTIREM COM A SHEBANG
vim.cmd([[ autocmd BufNewFile *.sh :call append(0, '#!/usr/bin/bash') ]])
vim.cmd([[ autocmd BufNewFile *.php :call append(0, '<?php ') ]])
