return {
    'theprimeagen/harpoon',
    config = function()
        -- space a - add file to harpoon
        vim.keymap.set("n", "<leader>a", require("harpoon.mark").add_file)

        -- ctrl e - show harpoon
        vim.keymap.set("n", "<C-e>", require("harpoon.ui").toggle_quick_menu)

        -- ctrl htns - go to file 1234
        vim.keymap.set("n", "<C-h>", function() require("harpoon.ui").nav_file(1) end)
        vim.keymap.set("n", "<C-t>", function() require("harpoon.ui").nav_file(2) end)
        vim.keymap.set("n", "<C-n>", function() require("harpoon.ui").nav_file(3) end)
        vim.keymap.set("n", "<C-s>", function() require("harpoon.ui").nav_file(4) end)

        local wk = require("which-key")
        wk.register({
            a = { "Add to Harpoon" },
        },
            { prefix = "<leader>" })
            --wk.register({
            --    "<C-e>" = { "Harpoon Quick Menu" },
            --    <c-h> = { "Harpoon File 1" },
            --    <c-t> = { "Harpoon File 2" },
            --    <c-n> = { "Harpoon File 3" },
            --    <c-s> = { "Harpoon File 4" }
            --}, {mode = "n", expr = true})
    end
}
