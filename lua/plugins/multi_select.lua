return {
    "mg979/vim-visual-multi",
    branch = "master",
    config = function()
        -- Add Cursors
        vim.cmd([[
            let g:VM_maps = {}
            let g:VM_maps['Add Cursor Down'] = '<S-DOWN>'
            let g:VM_maps['Add Cursor Up'] = '<S-UP>'
        ]])
    end,
}
