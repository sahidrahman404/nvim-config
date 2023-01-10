return {
	"ahmedkhalf/project.nvim",
	keys = {
		{
			"<leader>pp",
			"<cmd>lua require('telescope').extensions.projects.projects({})<Cr>zz",
		},
	},
	config = function()
		require("project_nvim").setup({})
		require("telescope").load_extension("projects")
	end,
}
