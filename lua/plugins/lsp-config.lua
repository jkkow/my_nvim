return {
    -- makes nvim to communicate with lsp servers
    "neovim/nvim-lspconfig",
    enable = false,
    dependencies = {
        "williamboman/mason.nvim",     -- install and unsintall LSP servers and more
        "williamboman/mason-lspconfig.nvim", -- interface between mason and nvim-lspconfig
    },

    config = function()
        require("mason").setup()

        require("mason-lspconfig").setup({
            -- main functionality of 'mason-lspconfig'
            ensure_installed = { "lua_ls", "pyright" },
        })

        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({}) -- set this line for every ensure_installed lsp servers
        lspconfig.pyright.setup({}) -- set this line for every ensure_installed lsp servers

        -- type 'K' to diplay hover information for the object under cursor
        -- you can neviagate the hovered contents by typing 'K' again
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
}
