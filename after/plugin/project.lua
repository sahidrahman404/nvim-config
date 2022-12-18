require("project_nvim").setup({})
require("telescope").load_extension("projects")
vim.keymap.set(
	"n",
	"<leader>pp",
	"<cmd>lua require('telescope').extensions.projects.projects({})<Cr>zz"
)
