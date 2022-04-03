vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer сам себя
    use 'wbthomason/packer.nvim'

    -----------------------------------------------------------
    -- ПЛАГИНЫ ВНЕШНЕГО ВИДА
    -----------------------------------------------------------

    -- Цветовая схема
    use 'morhetz/gruvbox'
    --- Информационная строка внизу
    use { 'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
        require('lualine').setup{
            options = { theme = 'gruvbox' }
        }
    end, }
    -- Табы вверху
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons',
    config = function()
        require("bufferline").setup{}
    end, }


    -----------------------------------------------------------
    -- НАВИГАЦИЯ
    -----------------------------------------------------------
    -- Файловый менеджер
    use { 'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {
        view = {
            width = 30,
            height = 30,
            side = "left",
            number = true
        }

    } end, }


    -- РАЗНОЕ
    -----------------------------------------------------------
    -- 'Автоформатирование' кода для всех языков
    use 'Chiel92/vim-autoformat'
    -- Считает кол-во совпадений при поиске
    use 'google/vim-searchindex'
    -- Стартовая страница, если просто набрать vim в консоле
    use 'mhinz/vim-startify'


    -- Автодоплнение и LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/vim-vsnip'
    use 'simrat39/rust-tools.nvim'
end)
