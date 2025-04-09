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
        { "<C-\\>",     ":Neotree toggle<CR>", desc = "NeoTree reveal", silent = true },
        { "<leader>e", ":Neotree focus<CR>",  desc = "NeoTree focus",  silent = true },
    },
    opts = {
        filesystem = {
            window = {
                adaptive_size = true, -- Automatically adjust the width to fit file contents
                mappings = {
                    ["\\"] = "close_window",
                },
            },
        },
        source_selector = {
            winbar = true,
            statusline = false,
        },
    },
}
