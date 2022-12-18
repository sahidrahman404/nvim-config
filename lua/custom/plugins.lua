return function(use)
	use({ -- auto close
		"m4xshen/autoclose.nvim",
	})

	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	use({ "ggandor/lightspeed.nvim" })

	use({ "ThePrimeagen/harpoon" })

	use({ "ur4ltz/surround.nvim" })

	use({ "rose-pine/neovim" })

	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	use({ "mbbill/undotree" })

	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
	})

	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})

	use({ "JoosepAlviste/nvim-ts-context-commentstring" })

	use({ "windwp/nvim-ts-autotag" })
end
