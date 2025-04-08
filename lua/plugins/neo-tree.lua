return {
	"nvim-neo-tree/neo-tree.nvim",
    enable = true,
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "<C-n>", ":Neotree reveal<CR>", desc = "NeoTree reveal", silent = true },
		{ "<leader>e", ":Neotree focus<CR>", desc = "NeoTree focus", silent = true },
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					["\\"] = "close_window",
				},
			},
		},
	},
}
