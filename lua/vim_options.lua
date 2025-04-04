-- disable netrw at the very start (this is for nvimtree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.swapfile = false

vim.g.mapleader = " "
vim.g.python3_host_prog = "C:/Users/jkkow/scoop/shims/python3.exe"

-- For script running with PowerShell in nvim terminal-line like `:!python3 %`
vim.cmd("autocmd!")

------------------------------------------------------------------------------
--- These three lines are all needed to make nvimterminal looks same with my powershell setup
-- vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
-- vim.opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

-- vim.opt.shell = "pwsh"
-- vim.opt.shellcmdflag = "-nologo -noprofile -ExecutionPolicy RemoteSigned -command"
-- vim.opt.shellxquote = ""

------------------------------------------------------------------------------

vim.opt.autoindent = true
vim.opt.scrolloff = 15 -- Offset lines from end when scrolling
vim.opt.cursorlineopt = "both" -- to enable cursorline!
vim.opt.ph = 10 -- Maximum number of item in popup menu
vim.opt.number = true

-- Basic tab/indentation settings
vim.opt.expandtab = true -- Replace tabs with spaces
vim.opt.tabstop = 4 -- Set the width of a tab character to 4 spaces
vim.opt.shiftwidth = 4 -- Set the width for automatic indentation to 4 spaces
vim.opt.softtabstop = 4 -- Set the soft tab stop to 4 spaces

-- Apply settings only for JavaScript files using autocommands
vim.cmd([[
  augroup JavaScriptSettings
    autocmd!
    autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
  augroup END
]])
