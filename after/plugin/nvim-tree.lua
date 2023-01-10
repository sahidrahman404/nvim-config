-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
})

vim.keymap.set(
	"n",
	"<leader>pe",
	vim.cmd.NvimTreeFocus,
	{ desc = "[P]roject [E]xplorer" }
)
vim.keymap.set(
	"n",
	"<leader>pt",
	vim.cmd.NvimTreeToggle,
	{ desc = "[P]roject explorer [T]oggle" }
)
vim.keymap.set(
	"n",
	"<leader>pf",
	vim.cmd.NvimTreeFindFile,
	{ desc = "[P]roject explorer [F]ind file" }
)
