return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim"
    },
    config = function()
        local mason = require("mason")
        local lspconfig = require("mason-lspconfig")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "☑",
                    package_pending = "☐",
                    package_uninstalled = "☒"
                }
            }
        })

        lspconfig.setup({
            ensure_installed = {
                "tsserver",
                "html",
                "cssls",
                "tailwindcss",
                "svelte",
                "lua_ls",
                "emmet_ls",
                "pyright"
            },
            automatic_installation = true
        })
    end
}
