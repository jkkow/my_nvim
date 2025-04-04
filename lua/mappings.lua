local map = vim.keymap.set

map("i", "lkj", "<ESC>")
map({ "n", "v" }, "H", "^")
map({ "n", "v" }, "L", "$")

-- file save and quite
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>w", "<cmd> w <cr>", { desc = "Save file" })
map("n", "<leader>q", "<cmd> q <cr>", { desc = "Quite file" })

-- transparent
map("n", "<leader>tr", function()
    require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })

-- run script
map("n", "<leader>l", "<cmd> source % <cr>", { desc = "Run current lua script" })
map("n", "<leader>r", "<cmd> !python3 % <cr>", { desc = "Run current python script" })

-- Selett all
map("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })
map("n", "x", '"_x') -- don't yank with x

-- Navigate vim panes better
map("n", "<c-k>", ":wincmd k<CR>")
map("n", "<c-j>", ":wincmd j<CR>")
map("n", "<c-h>", ":wincmd h<CR>")
map("n", "<c-l>", ":wincmd l<CR>")

map("n", "<leader>h", ":nohlsearch<CR>") -- remove highlights after serching
