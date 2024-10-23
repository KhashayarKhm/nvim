-- local rose_pine = require('rose-pine')
local palette = require("nightfox.palette").load("nightfox")

-- rose_pine.setup({
--     highlight_groups = {
--         IlluminatedWordText = { bg = 'highlight_high' },
--         IlluminatedWordRead = { bg = 'highlight_high' },
--         IlluminatedWordWrite = { bg = 'highlight_high' },
--         CursorLine = { bg = '_nc' },
--     },
-- })

function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "NormalNC", { bg = palette.bg0 })
end

ColorMyPencils("nightfox")
