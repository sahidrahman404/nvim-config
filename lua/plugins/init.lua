return {
	{
		-- LSP Configuration & Plugins
		"neovim/nvim-lspconfig",
		dependencies = {
			-- Automatically install LSPs to stdpath for neovim
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",

			-- Useful status updates for LSP
			"j-hui/fidget.nvim",
		},
	},
	{
		"j-hui/fidget.nvim",
		config = function()
			-- Turn on lsp status information
			require("fidget").setup()
		end,
	},
	{
		"williamboman/mason.nvim",
		config = function()
			-- Setup mason so it can manage external tooling
			require("mason").setup()
		end,
	},
	"williamboman/mason-lspconfig.nvim",
	{ -- Additional text objects via treesitter
		"nvim-treesitter/nvim-treesitter-textobjects",
		dependencies = "nvim-treesitter",
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		cond = vim.fn.executable("make") == 1,
	},
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	"ggandor/lightspeed.nvim",
	"nvim-treesitter/nvim-treesitter-context",
	{
		"kdheepak/lazygit.nvim",
		keys = {
			{ "<leader>gg", "<cmd>LazyGit<CR>", { desc = "open lazy git" } },
		},
	},
	"jose-elias-alvarez/typescript.nvim",
}
