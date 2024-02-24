return {
	-- lsp
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
		},
		config = function()
			require("plugins.core.config.cmp")
		end,
	},
	-- installer dependencies
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
	-- git
	{
		"tpope/vim-fugitive",
		lazy = false,
		config = function()
			vim.keymap.set("n", "<leader>gs", "<cmd>Git<CR>4j")
			vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
			vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		lazy = false,
		config = function()
			require("gitsigns").setup()
		end,
	},
	-- fuzy finder
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
	-- syntax highlight
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
	-- colorscheme
	{
		"projekt0n/github-nvim-theme",
		lazy = false,
		priority = 1000,
		config = function()
			require("github-theme").setup({
				options = { transparent = true },
			})
			vim.cmd.colorscheme("github_dark_default")
		end,
	},
	-- undo history
	{ "mbbill/undotree", cmd = "UndotreeToggle" },
	-- problems panel
	{
		"folke/trouble.nvim",
		lazy = false,
		config = function()
			require("plugins.core.config.trouble")
		end,
	},
}
