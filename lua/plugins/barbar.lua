return {
    "romgrk/barbar.nvim",
    dependencies = {
        "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
        "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    init = function()
        vim.g.barbar_auto_setup = true
    end,
    opts = {
        -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
        -- animation = true,
        -- insert_at_start = true,
        -- …etc.
    },
    version = "^1.0.0", -- optional: only update when a new 1.x version is released
    config = function()
        local map = vim.keymap.set
        local opts = { noremap = true, silent = true }

        map("n", "<C-z>", "<Cmd>BufferPrevious<CR>", opts)
        map("n", "<C-x>", "<Cmd>BufferNext<CR>", opts)
        map("n", "<C-c>", "<Cmd>BufferClose!<CR>", opts)
        map("t", "<C-c>", "<Cmd>BufferClose!<CR>", opts)

        -- Toggle tabline directly in the keymap command
        map(
            "n",
            "<C-t>",
            "<Cmd>lua if vim.o.showtabline == 2 then vim.o.showtabline = 0 else vim.o.showtabline = 2 end<CR>",
            opts
        )

        vim.cmd([[
            hi SomeHLGroup guibg=none
            hi BufferTabpageFill guibg=none
        ]])
    end,
}
