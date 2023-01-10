return {
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
	"rafamadriz/friendly-snippets",
}
