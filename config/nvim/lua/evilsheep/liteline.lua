vim.g.lightline = {
    colorscheme = 'tokyonight',
    component = { filename = '%f', helloworld = 'Hello', },
    active = {
        left = {
            { 'mode',      'past' },
            { 'gitbranch', 'filename', 'modified', }
        }
    },
    component_function = {
        gitbranch = 'FugitiveHead'
    },
    separator = { left = '', right = '' },
    subseparator = { left = '', right = '' },
}
