local hooks = require('ibl.hooks')
-- local palette = require('rose-pine.palette')
local palette = require('nightfox.palette').load("nightfox")

hooks.register(hooks.type.HIGHLIGHT_SETUP, function ()
  vim.api.nvim_set_hl(0, "rose", { fg = palette.yellow.base })
end)

require('ibl').setup {
    scope = {
      enabled = true,
      show_start = false,
      show_exact_scope = false,
      highlight = { 'rose', 'Function', 'Label' }
      -- highlight = { 'rose' }
    },
}
