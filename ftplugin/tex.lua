vim.g.mapleader = ";"

vim.opt_local.spell = true
vim.opt_local.spelllang = "en_us"
vim.opt_local.tabstop = 2
vim.opt_local.shiftwidth = 2


vim.keymap.set("n", "<M-[>", ":-tabmove<CR>", {noremap = true, silent = true, nowait = true})

-- Goto next <++>
vim.keymap.set("", "<Space><Space>", "<Esc>/<++><Enter><Esc>ca<", {noremap = true, silent = true})
vim.keymap.set("", "<C-Space><C-Space>", "<Esc>?<++><Enter><Esc>ca<", {noremap = true, silent = true})


-- Goto and replace next <+-+>
vim.keymap.set("i", "<leader><leader>", "<Esc>:.,.+2s/<+-+>//g<Left><Left>", {noremap = false, silent = true})
vim.keymap.set("n", "<leader><leader>", "<Esc>:.,.+2s/<+-+>//g<Left><Left>", {noremap = false, silent = true})
vim.keymap.set("c", "<Space><Space>", "<Enter>kk<Space><Space>", {noremap = false, silent = true})


-- Inline environments
vim.keymap.set("i", "<C-e>", "\\textit{} <++><Esc>5hi", {noremap = true, silent = true})
vim.keymap.set("i", "<C-b>", "\\textbf{} <++><Esc>5hi", {noremap = true, silent = true})
vim.keymap.set("i", "$", "$$ <++><Esc>5hi", {noremap = true, silent = true})


-- Compile settings
vim.keymap.set("n", ";d", ":wa<Enter> :!pdflatex %<Enter>", {noremap = true, silent = true})
vim.keymap.set("i", ";d", "<Esc>:wa<Enter> :!pdflatex %<Enter>", {noremap = true, silent = true})
vim.keymap.set("n", ";m", ":wa<Enter> :!make<Enter>", {noremap = true, silent = true})
vim.keymap.set("i", ";m", "<Esc>:wa<Enter> :!make<Enter>", {noremap = true, silent = true})
vim.keymap.set("n", ";b", ":wa<Enter> :!bibtex %:r<Enter>", {noremap = true, silent = true})
vim.keymap.set("i", ";b", "<Esc>:wa<Enter> :bibtex %:r<Enter>", {noremap = true, silent = true})


-- Arbitrary environment
vim.keymap.set("i", ";e", "<Esc>i\\begin{<+-+>}<Enter><++><Enter>\\end{<+-+>}<Esc>kk0", {noremap = true, silent = true})
vim.keymap.set("n", ";e", "<Esc>i\\begin{<+-+>}<Enter><++><Enter>\\end{<+-+>}<Esc>kk0", {noremap = true, silent = true})

-- Regular environments
-- Enumerate
vim.keymap.set("i", ";en", "\\begin{enumerate}<Enter>\\item <Enter><BS><++><Enter>\\end{enumerate}<Enter><++><Esc>kkkA", {noremap = true, silent = true})
-- Itemize
vim.keymap.set("i", ";it", "\\begin{itemize}<Enter>\\item <Enter><BS><++><Enter>\\end{itemize}<Enter><++><Esc>kkkA", {noremap = true, silent = true})
-- Item
vim.keymap.set("i", ";i<Space>", "\\item ", {noremap = true, silent = true})

--  Tabular
vim.keymap.set("i", ";t", "\\begin{table}[H]<Enter>\\begin{center}<Enter>\\caption{<+-+>} \\label{tab::<+-+>}<Enter>\\begin{tabular}{<++>}<Enter>\\hline<Enter><++><Enter>\\end{tabular}<Enter>\\end{center}<Enter>\\end{table}<Enter><++><Esc>7k0", {noremap = true, silent = true})
vim.keymap.set("n", ";t", "i;t", {noremap = false, silent = true})
vim.keymap.set("v", ";t", "c;t", {noremap = false, silent = true})

--  Figure
vim.keymap.set("i", ";F", "\\begin{figure}[H]<Enter>\\begin{center}<Enter>\\includegraphics[width=<++>]{graphics/<++>}<Enter>\\caption{<+-+>} \\label{fig::<+-+>}<Enter>\\end{center}<Enter>\\end{figure}<Enter><++><Esc>4k0", {noremap = true, silent = true})
vim.keymap.set("n", ";F", "i;F", {noremap = false, silent = true})
vim.keymap.set("v", ";F", "c;F", {noremap = false, silent = true})

--  Fraction
vim.keymap.set("i", ";f", "\\frac{}{<++>} <++><Esc>Ffwa", {noremap = true, silent = true})

--  Sectioning
vim.keymap.set("i", ";S", "\\section{<+-+>} \\label{sec::<+-+>}<Enter><++><Esc>k?<+-+><Enter>", {noremap = true, silent = true})
vim.keymap.set("i", ";s", "\\subsection{<+-+>} \\label{subsec::<+-+>}<Enter><++><Esc>k?<+-+><Enter>", {noremap = true, silent = true})
vim.keymap.set("i", ";ss", "\\subsubsection{<+-+>} \\label{subsubsec::<+-+>}<Enter><++><Esc>k<+-+><Enter>", {noremap = true, silent = true})
vim.keymap.set("n", ";S", "i;S", {noremap = false, silent = true})
vim.keymap.set("n", ";s", "i;s", {noremap = false, silent = true})
vim.keymap.set("n", ";ss", "i;ss", {noremap = false, silent = true})


-- Code Listings
vim.keymap.set("i", ";lst", "\\lstinputlisting[language=C++, label=lst::<+-+>, caption=<+-+>, captionpos = t]{<++>}", {noremap = true, silent = true})
vim.keymap.set("n", ";lst", "i;lst", {noremap = false, silent = true})
