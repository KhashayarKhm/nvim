local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup {
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--hidden',
    }
  },
}

telescope.load_extension('possession')
vim.keymap.set('n', '<leader>ls', telescope.extensions.possession.list, {})

vim.keymap.set('n', '<leader>ff', function ()
  builtin.find_files({
    hidden = true,
    ignore_file = { '.gitignore', '.ignore' },
    file_ignore_patterns = { '.git/' }
  })
end, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fc', function ()
  builtin.live_grep({
    regex = true,
    file_ignore_patterns = { '.git/' },
  })
end, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>bl', function ()
  vim.cmd('Telescope buffers')
end)
