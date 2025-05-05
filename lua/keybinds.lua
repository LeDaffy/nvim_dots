vim.g.mapleader = ";"

-- tabs
vim.keymap.set("n", "<M-[>", ":-tabmove<CR>", {noremap = true, silent = true, nowait = true})
vim.keymap.set("n", "<M-]>", ":+tabmove<CR>", {noremap = true, silent = true, nowait = true})
vim.keymap.set("n", "<M-{>", ":tabp<CR>",     {noremap = true, silent = true, nowait = true})
vim.keymap.set("n", "<M-}>", ":tabn<CR>",     {noremap = true, silent = true, nowait = true})

-- copy to clipboard
vim.keymap.set("v",";y", '"+y', {noremap = true, silent = true})

-- esc no highlight
vim.keymap.set("", "<Esc>", ":noh<CR><Esc>", {noremap = true, silent = true, nowait = true})

-- esc no highlight
vim.keymap.set("v", "", ":!column -t -s ' ' -o ' '<CR>", {noremap = true, silent = true, nowait = true})

-- move highlighted
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {noremap = true, silent = true, nowait = true})
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {noremap = true, silent = true, nowait = true})

vim.keymap.set("v", "<leader>p", "\"_dP", {noremap = true, silent = true, nowait = true})


-- Netrw
vim.keymap.set("", "", ":Lexplore<CR>", {noremap = true, silent = true, nowait = true})
vim.keymap.set("", "", ":Explore<CR>", {noremap = true, silent = true, nowait = true})

-- LSP
vim.keymap.set("n", "<leader>a", ":lua vim.lsp.buf.code_action()<CR>", {noremap = true, silent = true, nowait = true})
