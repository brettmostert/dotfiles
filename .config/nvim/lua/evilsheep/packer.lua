-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'

   use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      -- or                            , branch = '0.1.x',
      requires = { { 'nvim-lua/plenary.nvim' } }
   }
   -- use {
   --     'rmagatti/auto-session',
   --     config = function()
   --         require("auto-session").setup {
   --             log_level = "error",
   --             auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
   --         }
   --     end
   -- }
   use({
      'folke/tokyonight.nvim',
      as = 'tokyonight',
      config = function()
         vim.cmd('colorscheme tokyonight')
      end
   })
   use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
   use('nvim-treesitter/playground')
   use {
      'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
      config = function() require('gitsigns').setup() end
   }

   --use 'voldikss/vim-floaterm'

   use { "akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup({
        -- float_opts = {
        --    border = "double"
        --}
      })
   end }

   use({
      "lmburns/lf.nvim",
      requires = { "toggleterm.nvim" },
      --config = function()
         --vim.g.lf_netrw = 1

        -- require("lf").setup({
        --    escape_quit = false,
        --    border = "rounded",
        --    tmux = false,
        --    default_file_manager = false
        -- })

        -- vim.keymap.set("n", "<leader>lf", "<Cmd>Lf<CR>")
         --vim.api.nvim_create_autocmd("User", {
          --  pattern = "LfTermEnter",
          --  callback = function(a)
          --     vim.api.nvim_buf_set_keymap(a.buf, "t", "q", "q", { nowait = true })
          --  end
          --})
      --end
   })

   use({
      'folke/trouble.nvim',
      requires = { "nvim-tree/nvim-web-devicons" },

      config = function()
         require("trouble").setup {
            -- icons = false,
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
         }
      end
      --opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      --},
   })
   use 'itchyny/lightline.vim'
   use('mbbill/undotree')
   use('tpope/vim-fugitive')
   --use {
   --  "folke/which-key.nvim",
   -- config = function()
   --    vim.o.timeout = true
   --   vim.o.timeoutlen = 300
   --  require("which-key").setup {
   -- your configuration comes here
   -- or leave it empty to use the default settings
   -- refer to the configuration section below
   -- }
   --end
   --}
   use { 'mhartington/formatter.nvim' }
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
end)
