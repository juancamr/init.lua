return {
	{
		"neovim/nvim-lspconfig",
		init = function()
			require("juancamr.utils").lazy_load("nvim-lspconfig")
		end,
		dependencies = { "ray-x/lsp_signature.nvim" },
		config = function()
			require("plugins.core.config.lspconfig")
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"L3MON4D3/LuaSnip",
			"onsails/lspkind.nvim",
		},
		config = function()
			require("plugins.core.config.cmp")
		end,
	},
	{
		"williamboman/mason.nvim",
		lazy = false,
		cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require("plugins.core.config.mason")
		end,
	},
	{
		"tpope/vim-fugitive",
		lazy = false,
		config = function()
			vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		cmd = "Telescope",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = false,
		config = function()
			require("plugins.core.config.telescope")
		end,
	},
	{
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("plugins.core.config.devicons")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
		init = function()
			require("juancamr.utils").lazy_load("nvim-treesitter")
		end,
		config = function()
			require("plugins.core.config.treesitter")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		init = function()
			require("juancamr.utils").lazy_load("nvim-treesitter-context")
		end,
		config = function()
			require("treesitter-context").setup()
		end,
	},
	{
		"projekt0n/github-nvim-theme",
		lazy = false,
		priority = 1000,
		config = function()
			require("github-theme").setup()
			vim.cmd("colorscheme github_dark_default")
		end,
	},
	{ "mbbill/undotree", cmd = "UndotreeToggle" },
}
