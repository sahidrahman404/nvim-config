-- bootstrap lazy.nvim, LazyVim and your plugins
vim.o.background = "light"
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
require("config.lazy")
