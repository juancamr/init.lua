local luasnip = require("luasnip")
local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local lspkind = require("lspkind")

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
	}),
	mapping = cmp.mapping.preset.insert({
		["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
		["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
		["<C-y>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(),
	}),
	completion = {
		completeopt = "menu,menuone,noinsert",
	},
	formatting = {
		format = lspkind.cmp_format(),
	},
	window = {
		documentation = cmp.config.window.bordered(),
		completion = cmp.config.window.bordered({
			winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
		}),
	},
})
