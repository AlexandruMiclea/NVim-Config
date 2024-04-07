return {
    'tpope/vim-fugitive',
    config = function()
        -- space gs - git change manager 
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        local wk = require("which-key")
        wk.register({
            g = {
                name = "Git",
                s = { "Status" }
            }}, {prefix = "<leader>" })
    end
}
