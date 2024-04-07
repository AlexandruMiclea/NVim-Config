return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        -- space pf - find file in current directory
        vim.keymap.set('n', '<leader>pf', "<cmd>Telescope find_files<cr>", {})

        -- ctrl p - same as space pf but for git files 
        vim.keymap.set('n', '<C-p>', "<cmd>Telescope git_files<cr>", {})

        -- space ps - find text in file
        vim.keymap.set('n', '<leader>ps', function()
            require('telescope.builtin').grep_string({search = vim.fn.input("Grep > ") })
        end)
        local wk = require("which-key")
        wk.register({
            p = {
                name = "Project",
                f = { "Find files (Telescope)" },
                s = { "Find string (Telescope Grep)" }
            }}, { prefix = "<leader>" })
    end
}
