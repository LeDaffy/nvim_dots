" Latex Settings
let mapleader="\\"
set spell spelllang=en_us
setlocal tabstop=2
setlocal shiftwidth=2

" Goto next <++>
inoremap <Space><Space> <Esc>/<++><Enter><Esc>ca<
nnoremap <Space><Space> <Esc>/<++><Enter><Esc>ca<
vnoremap <Space><Space> <Esc>/<++><Enter><Esc>ca<
inoremap <C-Space><C-Space> <Esc>?<++><Enter><Esc>ca<
nnoremap <C-Space><C-Space> <Esc>?<++><Enter><Esc>ca<
vnoremap <C-Space><C-Space> <Esc>?<++><Enter><Esc>ca<

" Goto and replace next <+-+>
imap ;; <Esc>:.,.+2s/<+-+>//g<Left><Left>
nmap ;; <Esc>:.,.+2s/<+-+>//g<Left><Left>
cmap <Space><Space> <Enter>kk<Space><Space>

inoremap <C-e> \textit{} <++><Esc>5hi
inoremap <C-b> \textbf{} <++><Esc>5hi
inoremap $ $$ <++><Esc>5hi

" Compile settings
nnoremap ;d :wa<Enter> :!pdflatex %<Enter>
inoremap ;d <Esc>:wa<Enter> :!pdflatex %<Enter>
nnoremap ;m :wa<Enter> :!make<Enter>
inoremap ;m <Esc>:wa<Enter> :!make<Enter>
nnoremap ;b :wa<Enter> :!bibtex %:r<Enter>
inoremap ;b <Esc>:wa<Enter> :bibtex %:r<Enter>

" Arbitrary environment
inoremap ;e <Esc>i\begin{<+-+>}<Enter><++><Enter>\end{<+-+>}<Esc>kk0
nnoremap ;e <Esc>i\begin{<+-+>}<Enter><++><Enter>\end{<+-+>}<Esc>kk0

"Regular environments
"Enumerate
inoremap ;en \begin{enumerate}<Enter>\item <Enter><BS><++><Enter>\end{enumerate}<Enter><++><Esc>kkkA
"Itemize
inoremap ;it \begin{itemize}<Enter>\item <Enter><BS><++><Enter>\end{itemize}<Enter><++><Esc>kkkA
"Item
inoremap ;i<Space> \item 

" Tabular
inoremap ;t \begin{table}[H]<Enter>\begin{center}<Enter>\caption{<+-+>} \label{tab::<+-+>}<Enter>\begin{tabular}{<++>}<Enter>\hline<Enter><++><Enter>\end{tabular}<Enter>\end{center}<Enter>\end{table}<Enter><++><Esc>7k0
nmap ;t i;t
vmap ;t c;t

" Figure
inoremap ;F \begin{figure}[H]<Enter>\begin{center}<Enter>\includegraphics[width=<++>]{graphics/<++>}<Enter>\caption{<+-+>} \label{fig::<+-+>}<Enter>\end{center}<Enter>\end{figure}<Enter><++><Esc>4k0
nmap ;F i;F
vmap ;F c;F

" Fraction
inoremap ;f \frac{}{<++>} <++><Esc>Ffwa

" Sectioning
inoremap ;S \section{<+-+>} \label{sec::<+-+>}<Enter><++><Esc>k?<+-+><Enter>
inoremap ;s \subsection{<+-+>} \label{subsec::<+-+>}<Enter><++><Esc>k?<+-+><Enter>
inoremap ;ss \subsubsection{<+-+>} \label{subsubsec::<+-+>}<Enter><++><Esc>k<+-+><Enter>

nmap ;S i;S
nmap ;s i;s
nmap ;ss i;ss

inoremap ;lst \lstinputlisting[language=C++, label=lst::<+-+>, caption=<+-+>, captionpos = t]{<++>}
nmap ;lst i;lst

lua <<EOF
  require'lspconfig'.texlab.setup{}
  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['texlab'].setup {
    capabilities = capabilities
  }
EOF
