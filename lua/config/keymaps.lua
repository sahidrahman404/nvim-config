-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init
local map = vim.keymap.set

-- undotree
map("n", "<leader>U", "<cmd>UndotreeToggle<cr>", { desc = "UndoTree" })

-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
map("n", "<leader>hs", mark.add_file, { desc = "harpoon signify" })
map("n", "<leader>hm", ui.toggle_quick_menu, { desc = "harpoon menu" })
map("n", "<leader>hn", function()
  ui.nav_file(1)
end, { desc = "harpoon 1" })
map("n", "<leader>hh", function()
  ui.nav_file(2)
end, { desc = "harpoon 2" })
map("n", "<leader>ht", function()
  ui.nav_file(3)
end, { desc = "harpoon 3" })
map("n", "<leader>hd", function()
  ui.nav_file(4)
end, { desc = "harpoon 4" })

-- greatest remap ever
map("x", "<leader>p", [["_dP]], { desc = "better paste" })
