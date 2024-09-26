--h This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
  function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
      end
    }

    use {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      },
      config = function()
        require("neo-tree").setup({
          close_if_last_window = true
        })
      end
    }

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      -- or                            , branch = '0.1.x',
      requires = { { 'nvim-lua/plenary.nvim' } },
      config = function()
        require("telescope").setup {
          defaults = {
            path_display = { "shorten" }
          }
        }
      end
    }

    use({
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
      end
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
      "catppuccin/nvim",
      as = "catppuccin",
      config = function()
        require('catppuccin').setup({
          background = {
            light = "latte",
            dark = "mocha"
          }, -- hejsan
          transparent_background = true
        })

        vim.cmd(':colorscheme catppuccin')
      end
    }

    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },             -- Required
        { 'williamboman/mason.nvim' },           -- Optional
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },     -- Required
        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'L3MON4D3/LuaSnip' },     -- Required
      }
    }

    --[[use {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      config = function()
          require("nvim-autopairs").setup {}
      end
    }]]

    use "tpope/vim-surround"
    use "ray-x/lsp_signature.nvim"
    use "folke/todo-comments.nvim"
    use "folke/zen-mode.nvim"
    use { 'nvim-telescope/telescope-ui-select.nvim' }
  end
)
