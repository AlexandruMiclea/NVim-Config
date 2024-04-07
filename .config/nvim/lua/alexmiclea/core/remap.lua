vim.g.mapleader = " "
-- space pv to see project files
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- in visual mode, J and K move the characters up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- J moves the line below to the end of the above line. this 
-- remap allows me to keep the cursor in place
vim.keymap.set("n", "J", "mzJ`z")

-- keep the cursor in the middle when page-jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- used when searching for something, keeps the cursor
-- in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- space p pastes and keeps the same paste buffer 
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- copies to global clipboard (can paste outside nvim)
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- deletes go to void buffer
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- unmaps Q, which by default replays the last recorded macro
vim.keymap.set("n", "Q", "<nop>")

-- todo determine what these do
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- space s refactors the word I have my cursor on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- something something give executable rights
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
