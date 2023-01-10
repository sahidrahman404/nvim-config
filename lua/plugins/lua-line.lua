return {
	"nvim-lualine/lualine.nvim", -- Fancier statusline
	config = function()
		-- Set lualine as statusline
		-- See `:help lualine.txt`
		require("lualine").setup({
			options = {
				icons_enabled = false,
				theme = "rose-pine",
				component_separators = "|",
				section_separators = "",
			},
		})
	end,
}
