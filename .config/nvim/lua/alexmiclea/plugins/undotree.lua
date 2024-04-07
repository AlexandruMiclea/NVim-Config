return {
    'mbbill/undotree',
    config = function()
        -- space u - undotree toggle
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        local wk = require("which-key")
        wk.register({ u = { "Undotree" }}, {prefix = "<leader>" })
    end
}
