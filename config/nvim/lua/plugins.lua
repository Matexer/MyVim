-- List of plugins
return require('packer').startup(function(use)
    -- Packer manage itself
    use 'wbthomason/packer.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use {'neoclide/coc.nvim', branch = 'release'}

    -- Language, spell check
    use {
        'nvim-treesitter/nvim-treesitter',
        'lewis6991/spellsitter.nvim',
      }

    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- File explorer
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
      }

    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Tabline
    use {
        'akinsho/bufferline.nvim', tag = "v3.*",
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- Debugging
    use {
        "rcarriga/nvim-dap-ui",
        requires = {"mfussenegger/nvim-dap"}
    }

    -- Keybinding
    -- Neovim plugin that shows a popup with possible keybindings of the command you started typing.
    use {
        "folke/which-key.nvim",
        config = function()
          require("which-key").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
          }
        end
    }

    -- Comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Session
    use {
        'rmagatti/auto-session',
        config = function()
          require("auto-session").setup {
            log_level = "error",
            auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
          }
        end
    }

end)
