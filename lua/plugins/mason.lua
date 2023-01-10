return {
	"williamboman/mason.nvim",
	config = function()
		-- Setup mason so it can manage external tooling
		require("mason").setup()
	end,
}
