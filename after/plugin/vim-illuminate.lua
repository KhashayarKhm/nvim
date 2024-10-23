require('illuminate').configure {
    providers = {
        'lsp',
        'treesitter',
        'regex',
    },
    filetypes_denylist = {
        'qf',
        'Trouble',
        'netrw',
        'dirbuf',
        'dirvish',
        'fugitive',
        'oil',
        'NvimTree'
    },
    under_cursor = true
}
