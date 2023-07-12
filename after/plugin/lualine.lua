local function session_name()
  return require('possession.session').session_name or ''
end

require('lualine').setup {
  sections = {
    lualine_b = { 'branch', 'diagnostics' },
    lualine_c = { session_name, 'filename' }
  }
}
