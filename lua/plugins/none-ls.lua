return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.diagnostics.eslint_d,
                null_ls.builtins.diagnostics.cfn_lint,
                null_ls.builtins.completion.spell,
                null_ls.builtins.code_actions.xo,
                null_ls.builtins.diagnostics.markuplint,
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
        -- Set up an autocommand to format before saving
        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*",
            callback = function()
                vim.lsp.buf.format({ async = false })
            end,
        })
    end,
}
