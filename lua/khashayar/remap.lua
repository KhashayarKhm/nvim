vim.g.mapleader = " "

-- Delete all buffer except current one
vim.keymap.set("n", "<leader>bda", ":%bd<CR><C-o>")

-- IDK!
vim.keymap.set("n", "Q", "<nop>")

-- Doesn't work
-- Start a new project on tmux
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Formatting
vim.keymap.set("n", "<leader>fb", vim.lsp.buf.format)

-- Quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Open Netrw Explorer
vim.keymap.set("n", "<leader>nee", vim.cmd.Ex)
vim.keymap.set("n", "<leader>nev", vim.cmd.Vex)
vim.keymap.set("n", "<leader>nes", vim.cmd.Sex)

-- Move lines up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Bring the bottom line in current
vim.keymap.set("n", "J", "mzJ`z")

-- Move up and down the view (link <PG-up>, <PG-down>)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep the cursor in the middle in searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without losing the buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank into the system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Quick replace selected
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Source the file
vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)
