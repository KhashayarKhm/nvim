require('possession').setup {
  autosave = {
    current = true,  -- or fun(name): boolean
    tmp = true,  -- or fun(): boolean
    tmp_name = 'tmp',
    on_load = true,
    on_quit = true,
  }
}

