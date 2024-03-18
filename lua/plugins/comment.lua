return {
    "numToStr/Comment.nvim",
    opts = {
        opleader = {
            line = "<leader>/", -- Line-comment toggle keymap
            block = "<leader>b", -- Block-comment toggle keymap (adjusted)
        },
    },
    config = function()
        require("Comment").setup({
            opleader = {
                line = "<leader>/",
                block = "<leader>b", -- Ensure this is a valid keymap
            },
        })
    end,
}
