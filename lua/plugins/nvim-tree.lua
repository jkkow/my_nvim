return {
	"nvim-tree/nvim-tree.lua",
	enable = true,
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			view = {
				width = 35,
			},
			filters = {
				dotfiles = false,
			},
		})
		vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
		vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")
	end,
}
