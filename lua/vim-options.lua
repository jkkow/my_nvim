-- leader key must have set before other plugins are loade
-- so this is not a good place to locate.
-- locate it in 'init.lua' fjle
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

vim.g.python3_host_prog = "C:/Users/jkkow/scoop/shims/python3.exe"

------------------------------------------------------------------------------
--- These three lines are all needed to make nvimterminal looks same with my powershell setup
-- vim.opt.shellcmdflag = "-nologo -noprofile -ExecutionPolicy RemoteSigned -command"
vim.opt.shellcmdflag =
"-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
vim.opt.shell = "pwsh"
vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""
------------------------------------------------------------------------------

-- Basic tab/indentation settings
vim.opt.expandtab = true -- Replace tabs with spaces
vim.opt.tabstop = 4      -- Set the width of a tab character to 4 spaces
vim.opt.shiftwidth = 4   -- Set the width for automatic indentation ('>>' or '<<') to 4 spaces
vim.opt.softtabstop = 4  -- Set the soft tab stop to 4 spaces

vim.opt.termguicolors = true
vim.opt.swapfile = false

-- Set to true if you have nerd font installed and selected in the terminal
vim.g.have_nerd_font = true

-- disable netrw at the very start (this is for nvimtree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"

-- Don't show the mode, because it's arleady in the status line
vim.opt.showmode = false

vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"
vim.opt.ignorecase = true

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)

-- Enable break indent
-- Every wrapped line will continue visually indented (same amount of
-- space as the beginning of that line), thus preserving horizontal blocks of text.
vim.opt.breakindent = true
vim.opt.autoindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease update time and mapped sequence wait time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 15

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.opt.confirm = true

vim.opt.cursorlineopt = "both" -- to enable cursorline!
vim.opt.ph = 10                -- Maximum number of item in popup menu

-- Set visible border line for pane separators
vim.opt.fillchars = {
    vert = "║",
    horiz = "═",
    horizup = "╩",
    horizdown = "╦",
    vertleft = "╣",
    vertright = "╠",
    verthoriz = "╬",
}
vim.cmd([[
  highlight WinSeparator guifg=#cba6f7 gui=bold
  set winhighlight=VertSplit:WinSeparator
]])

-- Apply settings only for JavaScript files using autocommands
vim.cmd([[
  augroup JavaScriptSettings
    autocmd!
    autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
  augroup END
]])
