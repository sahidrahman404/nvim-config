require("lsp-format").setup {}
require("lspconfig").sumneko_lua.setup { on_attach = require("lsp-format").on_attach }
require("lspconfig").tsserver.setup { on_attach = require("lsp-format").on_attach }
