setlocal tabstop=4
setlocal shiftwidth=4


lua <<EOF
  require'lspconfig'.clangd.setup{}
EOF
