return {
	"jose-elias-alvarez/null-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")

		local lsp_formatting = function(bufnr)
			vim.lsp.buf.format({
				filter = function(client)
					-- apply whatever logic you want (in this example, we'll only use null-ls)
					return client.name == "null-ls"
				end,
				bufnr = bufnr,
			})
		end

		-- if you want to set up formatting on save, you can use this as a callback
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		null_ls.setup({
			sources = {
				-- null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.diagnostics.eslint,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.completion.spell,
				null_ls.builtins.formatting.sql_formatter,
				null_ls.builtins.code_actions.eslint,
				null_ls.builtins.diagnostics.golangci_lint,
				null_ls.builtins.formatting.golines,
				null_ls.builtins.diagnostics.actionlint,
				require("typescript.extensions.null-ls.code-actions"),
			},
			-- add to your shared on_attach callback
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({
						group = augroup,
						buffer = bufnr,
					})
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							lsp_formatting(bufnr)
						end,
					})
				end
			end,
		})
	end,
}
