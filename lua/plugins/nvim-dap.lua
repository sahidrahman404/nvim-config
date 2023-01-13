return {
	"mfussenegger/nvim-dap",
	keys = {
		{
			"<leader>db",
			"<CMD>lua require'dap'.toggle_breakpoint()<CR>",
			{ desc = "[D]ebug [B]reakpoint" },
		},
		{
			"<leader>dc",
			"<CMD>lua require'dap'.continue()<CR>",
			{ desc = "[D]ebug [C]ontinue" },
		},
		{
			"<leader>dc",
			"<CMD>lua require'dap'.continue()<CR>",
			{ desc = "[D]ebug [C]ontinue" },
		},
		{

			"<leader>do",
			"<CMD>lua require'dap'.step_over()<CR>",
			{ desc = "[D]ebug [O]ver" },
		},
		{
			"<leader>di",
			"<CMD>lua require'dap'.step_into()<CR>",
			{ desc = "[D]ebug [I]nto" },
		},
		{
			"<leader>dr",
			"<CMD>lua require'dap'.repl.open()<CR>",
			{ desc = "[D]ebug [R]epl" },
		},
	},
}
