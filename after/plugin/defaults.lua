local builtin = require "telescope.builtin"
vim.opt.relativenumber = true

-- copy paste
vim.opt.clipboard = "unnamedplus"

-- save file
vim.keymap.set("n", "<leader>s", vim.cmd.update, { desc = "[S]save" })

-- Better netrw navigation
vim.keymap.set("n", "<leader>pe", vim.cmd.Ex, { desc = "[P]roject [E]xplorer" })

-- find file in a git repo
vim.keymap.set("n", "<leader>pg", builtin.git_files, { desc = "[P]roject [G]it" })

vim.keymap.set("n", "<leader>sr", require("telescope.builtin").resume, { desc = "[S]earch [R]esume" })
