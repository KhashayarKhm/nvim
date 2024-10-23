
vim.opt.encoding = "utf-8"

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true

vim.opt.number = true

vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.ruler = true
vim.opt.visualbell = true
vim.opt.history = 1000
vim.opt.shiftround = true
vim.opt.termbidi = true
vim.opt.cursorline = true
vim.opt.wrap = true

vim.opt.swapfile = true
vim.opt.backup = true
vim.opt.backupdir = os.getenv("HOME") .. "/.local/state/nvim/backup//,."
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
-- vim.hidden = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"

vim.g.mapleader = " "

vim.opt.list = true
vim.opt.listchars = 'trail:·'
