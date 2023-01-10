return {
	-- LSP Configuration & Plugins
	"neovim/nvim-lspconfig",
	dependencies = {
		-- Automatically install LSPs to stdpath for neovim
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",

		-- Useful status updates for LSP
		"j-hui/fidget.nvim",
	},
	config = function()
		local nvim_lsp = require("lspconfig")

		--emmet
		nvim_lsp.emmet_ls.setup({
			filetypes = {
				"html",
				"typescriptreact",
				"javascriptreact",
				"css",
				"sass",
				"scss",
				"less",
				"eruby",
				"heex",
				"eex",
				"elixir",
			},
		})

		--json
		--Enable (broadcasting) snippet capability for completion
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport =
			true

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

		-- Make runtime files discoverable to the server
		local runtime_path = vim.split(package.path, ";")
		table.insert(runtime_path, "lua/?.lua")
		table.insert(runtime_path, "lua/?/init.lua")

		require("lspconfig").sumneko_lua.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					runtime = {
						-- Tell the language server which version of Lua you're using (most likely LuaJIT)
						version = "LuaJIT",
						path = runtime_path,
					},
					diagnostics = { globals = { "vim" } },
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
					},
					-- Do not send telemetry data containing a randomized but unique identifier
					telemetry = { enable = false },
				},
			},
		})

		--elixir
		require("lspconfig").elixirls.setup({
			cmd = { "/home/rahman/.local/share/nvim/mason/bin/elixir-ls" },
		})
	end,
}
