-- Set colorscheme
vim.cmd("colorscheme unokai")
vim.cmd("let netrw_liststyle=3")

-- Line folding
vim.o.foldmethod     = "indent"
vim.api.nvim_create_autocmd({"BufRead"}, {
    command = "norm zR",
})

-- Line numbers
vim.o.relativenumber = true 
vim.o.number         = true

-- Indents
vim.o.breakindent    = true 
vim.o.autoindent     = true 
vim.o.cindent        = true 

-- Tabs
vim.o.expandtab      = true 
vim.o.tabstop        = 4    
vim.o.softtabstop    = 0
vim.o.shiftwidth     = 4    

-- Misc
vim.o.linebreak      = true
vim.o.ignorecase     = true
vim.o.scrolloff      = 5
