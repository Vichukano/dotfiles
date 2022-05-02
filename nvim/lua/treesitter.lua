require('nvim-treesitter.configs').setup({
    ensure_installed = {'rust', 'lua', 'java'},
    highlight = {enable = true},
    indent = {enable = true}
})
