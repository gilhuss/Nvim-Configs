return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            completion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            window = {
                completion = cmp.config.window.bordered({
                    winhighlight = "FloatBorder:None",
                }),
                documentation = cmp.config.window.bordered({
                    winhighlight = "FloatBorder:None",
                }),
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-a>"] = cmp.mapping.select_prev_item(),
                ["<C-s>"] = cmp.mapping.select_next_item(),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-c>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp", priority = 1000 }, -- Higher priority for LSP suggestions
                { name = "luasnip",  priority = 750 }, -- Adjust priority as needed
                { name = "buffer",   priority = 500 }, -- Adjust priority as needed
                { name = "path",     priority = 250 }, -- Adjust priority as needed
            }),
        })
    end,
}
