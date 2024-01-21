local M = {}

M.get_formatters_list = function()
	local formatters_list = {}
	local formatters = require("juancamr.constants").formatters
	for _, formatter in pairs(formatters) do
		table.insert(formatters_list, formatter)
	end
	return formatters_list
end

M.lazy_load = function(plugin)
	local vim = vim
	vim.api.nvim_create_autocmd({ "BufRead", "BufWinEnter", "BufNewFile" }, {
		group = vim.api.nvim_create_augroup("BeLazyOnFileOpen" .. plugin, {}),
		callback = function()
			local file = vim.fn.expand("%")
			local condition = file ~= "NvimTree_1" and file ~= "[lazy]" and file ~= ""

			if condition then
				vim.api.nvim_del_augroup_by_name("BeLazyOnFileOpen" .. plugin)

				-- dont defer for treesitter as it will show slow highlighting
				-- This deferring only happens only when we do "nvim filename"
				if plugin ~= "nvim-treesitter" then
					vim.schedule(function()
						require("lazy").load({ plugins = plugin })

						if plugin == "nvim-lspconfig" then
							vim.cmd("silent! do FileType")
						end
					end, 0)
				else
					require("lazy").load({ plugins = plugin })
				end
			end
		end,
	})
end

return M
