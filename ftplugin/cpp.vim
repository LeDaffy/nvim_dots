" Arduino settings


setlocal tabstop=4
setlocal shiftwidth=4
setlocal mp=make

" nnoremap ;c :w<Enter> :!arduino-cli compile -b arduino:avr:uno<Enter>
" nnoremap ;c :w<Enter> :!compilecppavr.sh<Enter>

" imap ;c <Esc>;ca
" nnoremap ;ec :w<Enter> :!compilecppesp.sh<Enter>
" imap ;ec <Esc>;eca
" nnoremap ;u :w<Enter> :!arduino-cli upload -b arduino:avr:uno -p /dev/ttyUSB0<Enter>
" nnoremap ;u :w<Enter> :!uploadcppavr.sh<Enter>
" imap ;u <Esc>;ua
" nnoremap ;eu :w<Enter> :!uploadcppesp.sh<Enter>
" imap ;eu <Esc>;ua


nnoremap ;c :wa<Enter>:make<Enter>
nnoremap ;t :tabnew<Enter>:vsplit<Enter>


lua <<EOF
  require'lspconfig'.clangd.setup{}
EOF
