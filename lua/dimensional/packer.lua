-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- colors
    use 'gruvbox-community/gruvbox'
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use 'folke/tokyonight.nvim'
    use 'Mofiqul/dracula.nvim'

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim', "nvim-tree/nvim-web-devicons"} }
    }

    -- language awareness
    use {
        'nvim-treesitter/nvim-treesitter',
        'nvim-treesitter/nvim-treesitter-context',
        run = ':TSUpdate'
    } 
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind.nvim'

    -- cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- comments
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- undotree
    use 'mbbill/undotree'

    -- git
    use 'tpope/vim-fugitive'

    use 'lervag/vimtex'
end)
