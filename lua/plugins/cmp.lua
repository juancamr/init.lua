return {
        "hrsh7th/nvim-cmp",
        lazy = false,
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "L3MON4D3/LuaSnip",
        },
        config = function()
            local ls = require("luasnip")
            local cmp = require("cmp")
            local cmp_select = { behavior = cmp.SelectBehavior.Select }

            vim.keymap.set({"i", "s"}, "<C-k><Tab>", function() ls.jump(1) end, {silent = true})
            vim.keymap.set({"i", "s"}, "<C-k>,", function() ls.jump(-1) end, {silent = true})

            cmp.setup({
                snippet = {
                    expand = function(args)
                        ls.lsp_expand(args.body)
                    end,
                },
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "path" },
                }),
                mapping = cmp.mapping.preset.insert({
                    ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
                    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
                    ["<C-e>"] = cmp.mapping.confirm({ select = true }),
                    ["<C-Space>"] = cmp.mapping.complete(),
                }),
                completion = { completeopt = "menu,menuone,noinsert" },
            })
        end,
    }
