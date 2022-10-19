nnoremap ;c <Esc>:w<Enter>:!python %<Enter>
imap ;c <Esc>;c

lua <<EOF
  require'lspconfig'.pyright.setup{}
  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
EOF
