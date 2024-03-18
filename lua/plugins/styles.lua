return {
    "savq/melange-nvim",
    name = "melange",
    priority = 1000,
    opts = {},
    config = function()
        vim.cmd.colorscheme("melange")
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
}
