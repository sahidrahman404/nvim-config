return {
	"ThePrimeagen/git-worktree.nvim",
	keys = {
		{
			"<leader>gw",
			":lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
			{ desc = "[G]it [W]orktree" },
		},
		-- <Enter> - switches to that worktree
		-- <c-d> - deletes that worktree
		-- <c-f> - toggles forcing of the next deletion)
		{
			"<leader>gc",
			":lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
			{ desc = "[Git], [C]reate worktree" },
		},
	},
	config = function()
		require("git-worktree").setup({})

		require("telescope").load_extension("git_worktree")

		local Worktree = require("git-worktree")

		-- op = Operations.Switch, Operations.Create, Operations.Delete
		-- metadata = table of useful values (structure dependent on op)
		--      Switch
		--          path = path you switched to
		--          prev_path = previous worktree path
		--      Create
		--          path = path where worktree created
		--          branch = branch name
		--          upstream = upstream remote name
		--      Delete
		--          path = path where worktree deleted

		Worktree.on_tree_change(function(op, metadata)
			if op == Worktree.Operations.Switch then
				print(
					"Switched from "
						.. metadata.prev_path
						.. " to "
						.. metadata.path
				)
			end
		end)
	end,
}
