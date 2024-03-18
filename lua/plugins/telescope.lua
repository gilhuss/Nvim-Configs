return {
    {
        "nvim-telescope/telescope.nvim",
        tags = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            local telescope = require("telescope")
            local actions = require("telescope.actions")

            telescope.setup({
                defaults = {
                    mappings = {
                        i = {
                            ["<C-a>"] = actions.move_selection_previous,
                            ["<C-s>"] = actions.move_selection_next,
                            ["<C-d>"] = actions.send_selected_to_qflist + actions.open_qflist,
                        },
                    },
                },
            })

            telescope.load_extension("fzf")

            local keymap = vim.keymap
            keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Fuzzy Find Files in cwd" })
            keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Fuzzy Find Recent Files" })
            keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "Find String in cwd" })
            keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "Find String under cursor cwd" })
            -- local builtin = require("telescope.builtin")
            -- -- "<leader>sf" Search Files
            -- vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
            -- -- "<leader>st" Search Text In Files
            -- vim.keymap.set('n', '<leader>st', builtin.live_grep, {})
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
