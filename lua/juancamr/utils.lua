local M = {}

M.servers = {
	"lua_ls",
	"pyright",
	"tsserver",
	"astro",
	"clangd",
}

M.formatters = {
	lua = { "stylua" },
	python = { "black" },
	js = { "prettierd" },
}

M.get_formatters_list = function()
	local formatters_list = {}
	for _, formatter in pairs(M.formatters) do
		for _, f in pairs(formatter) do
			table.insert(formatters_list, f)
		end
	end
	return formatters_list
end

return M
