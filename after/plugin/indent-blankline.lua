vim.opt.list = true

vim.cmd('highlight IndentBlanklineContextChar guifg=rose gui=nocombine')

require("indent_blankline").setup {
  show_current_context = true,
  show_current_context_start = false,
  space_char_blankline = ' ',
}
