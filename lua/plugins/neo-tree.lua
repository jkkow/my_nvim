return {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {},

    config = function()
        vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>")
        vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>")
    end,
}
