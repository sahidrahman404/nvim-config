return function(use)
  use { -- auto close
    "m4xshen/autoclose.nvim",
  }

  use {
    "jose-elias-alvarez/null-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  }

  use { "lukas-reineke/lsp-format.nvim" }

  use { "ggandor/lightspeed.nvim" }

  use { "ThePrimeagen/harpoon" }

  use { "ur4ltz/surround.nvim" }

  use { "rose-pine/neovim" }

  use {
    "akinsho/toggleterm.nvim",
    tag = "*",
    config = function()
      require("toggleterm").setup()
    end,
  }

  use { "mbbill/undotree" }
end
