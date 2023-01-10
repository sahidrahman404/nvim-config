return {
	"akinsho/toggleterm.nvim",
	version = "*",
	keys = {
		{
			"<leader>gg",
			"<cmd>lua lazygit_toggle()<CR>",
			{ noremap = true, silent = true },
		},
	},
	config = function()
		local Terminal = require("toggleterm.terminal").Terminal

		local highlights = require("rose-pine.plugins.toggleterm")
		require("toggleterm").setup({ highlights = highlights })

		local lazygit = Terminal:new({
			cmd = "lazygit",
			dir = "git_dir",
			direction = "tab",
			float_opts = {
				border = "double",
			},
			-- function to run on opening the terminal
			on_open = function(term)
				vim.cmd("startinsert!")
				vim.api.nvim_buf_set_keymap(
					term.bufnr,
					"n",
					"q",
					"<cmd>close<CR>",
					{ noremap = true, silent = true }
				)
			end,
			-- function to run on closing the terminal
			on_close = function()
				vim.cmd("startinsert!")
			end,
		})

		lazygit_toggle = function()
			lazygit:toggle()
		end
	end,
}
