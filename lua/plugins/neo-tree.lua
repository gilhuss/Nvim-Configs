return {
    "nvim-neo-tree/neo-tree.nvim", -- Sidebar w/ Folderstructure
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        -- "CTRL + n" Opens Sidenavigation
        vim.keymap.set("n", "<C-w>", ":Neotree filesystem reveal left<CR>", { noremap = true, silent = true })
        -- "CTRL + b" Closes Sidenavigation
        vim.keymap.set("n", "<C-q>", ":Neotree close<CR>", { noremap = true, silent = true })
    end,
}
