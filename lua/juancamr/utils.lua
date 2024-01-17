local M = {}

M.servers = {
	"lua_ls",
	"pyright",
	"tsserver",
	"clangd",
	"astro",
}

M.formatters = {
	stylua = "stylua",
	black = "black",
	isort = "isort",
	prettier = "prettier",
	prettierd = "prettierd",
}

M.get_formatters_list = function()
	local formatters_list = {}
	for _, formatter in pairs(M.formatters) do
		table.insert(formatters_list, formatter)
	end
	return formatters_list
end

M.treesitter_languages = {
	"javascript",
	"typescript",
	"tsx",
	"astro",
	"python",
	"lua",
	"cpp",
}

M.extra_devicon_extensions = {
	["astro"] = {
		icon = "󰬈",
		color = "#FF0000",
		name = "astro",
	},
}

return M
