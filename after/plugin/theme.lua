local rose_pine = require('rose-pine')

rose_pine.setup({
  disable_background = true,
  highlight_groups = {
		IlluminatedWordText = { bg = 'highlight_high' },
		IlluminatedWordRead = { bg = 'highlight_high' },
		IlluminatedWordWrite = { bg = 'highlight_high' },
	},
})

function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
