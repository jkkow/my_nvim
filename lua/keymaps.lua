local map = vim.keymap.set

map("i", "lkj", "<ESC>")
map({ "n", "v" }, "H", "^")
map({ "n", "v" }, "L", "$")

-- file save and quite
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>w", "<cmd> w <cr>", { desc = "Save file" })
map("n", "<leader>q", "<cmd> q <cr>", { desc = "Quite file" })

-- run script
map("n", "<leader>l", "<cmd> source % <cr>", { desc = "Run current lua script" })
map("n", "<leader>r", "<cmd> !python3 % <cr>", { desc = "Run current python script" })

-- Selett all
map("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })
map("n", "x", '"_x') -- don't yank with x

-- Navigate vim panes better
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Clear highlights on search when pressing <Esc> in normal mode
map("n", "<Esc>", "<cmd>nohlsearch<Cr>")

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
