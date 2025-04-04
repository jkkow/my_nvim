return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        -- setup must be called before loading
        require("catppuccin").setup({
            flavour = "macchiato", -- latte, frappe, macchiato, mocha
        })
        vim.cmd("colorscheme catppuccin")
    end,
}
