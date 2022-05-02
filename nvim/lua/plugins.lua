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
               require('lualine').setup{ options = { theme = 'gruvbox' } }
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
            number = false 
        }
    } end, }
    -- Поисковик
    use {
        'nvim-telescope/telescope.nvim',
        config = function() require('nvim-telescope') end,
        requires = {'kyazdani42/nvim-web-devicons', 'nvim-lua/plenary.nvim'}
    }
    -- По нажатию jk, jj выход из режима редактирования
    use {
        "max397574/better-escape.nvim",
        config = function() require("better_escape").setup {
	      mapping = {"jk", "jj"},
	      timout = 50, }
        end,
        }
    -- РАЗНОЕ
    -----------------------------------------------------------
    -- Стартовая страница, если просто набрать vim в консоле
    use 'mhinz/vim-startify'
    -- LSP, подсветка синтаксиса, автодополнение, навигация
    use {
        'neovim/nvim-lspconfig',
        config = function() require('lspconfig') end
    }
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path',
            'hrsh7th/cmp-calc', 'hrsh7th/cmp-vsnip', 'hrsh7th/vim-vsnip'
        }
    }
    use 'simrat39/rust-tools.nvim'
    use {
        'nvim-treesitter/nvim-treesitter',
        config = function() require('treesitter') end,
        run = ':TSUpdate'
    }
end)
