local nvim_lsp = require("lspconfig")

--emmet
nvim_lsp.emmet_ls.setup({})

--json
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").jsonls.setup({
	capabilities = capabilities,
})

--tailwind
require("lspconfig").tailwindcss.setup({})

--prisma
require("lspconfig").prismals.setup({})

--yaml
require("lspconfig").yamlls.setup({})

--css
require("lspconfig").cssls.setup({
	capabilities = capabilities,
})

--html
require("lspconfig").html.setup({
	capabilities = capabilities,
})

--sqlls
require("lspconfig").sqlls.setup({})

--docker
require("lspconfig").dockerls.setup({})
