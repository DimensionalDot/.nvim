return {
    -- colors
    'gruvbox-community/gruvbox',
    { 'rose-pine/neovim', name = 'rose-pine' },
    'folke/tokyonight.nvim',
    'Mofiqul/dracula.nvim',

    -- lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
    },

    -- telescope
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { {'nvim-lua/plenary.nvim', "nvim-tree/nvim-web-devicons"} }
    },

    -- language awareness
    {
        'nvim-treesitter/nvim-treesitter',
        'nvim-treesitter/nvim-treesitter-context',
        'nvim-treesitter/playground',
        build = ':TSUpdate'
    },
    'neovim/nvim-lspconfig',
    'onsails/lspkind.nvim',

    -- cmp
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',

    -- comments
    'numToStr/Comment.nvim',

    {
        'JoosepAlviste/nvim-ts-context-commentstring',
        opts = { enable_autocmd = false },
        config = function()
            require('Comment').setup {
                pre_hook = require(
                    'ts_context_commentstring.integrations.comment_nvim'
                ).create_pre_hook(),
            }
        end
    },

    -- undotree
    'mbbill/undotree',

    -- git
    'tpope/vim-fugitive',

    'lervag/vimtex',
}
