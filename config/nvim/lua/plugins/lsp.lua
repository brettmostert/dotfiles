return {

   'VonHeikemen/lsp-zero.nvim',
   branch = 'v3.x',
   dependencies = {
      {
         'williamboman/mason.nvim',
         lazy = false,
         opts = {
         },
      },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'neovim/nvim-lspconfig' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-vsnip'},
      { 'hrsh7th/vim-vsnip'},
      --{
      --   'L3MON4D3/LuaSnip',
     --    version = "v2.*",                    -- Replace <CurrentMajor> by the latest released major (first number of latest release)
         -- install jsregexp (optional!).
     --    build = "make install_jsregexp"
     -- },
      --{ 'saadparwaiz1/cmp_luasnip' }

   }
   --{
   -- 'williamboman/mason.nvim',
   -- opts = {
   --    ensure_installed = {
   --       "gopls",
   --    }
   -- },
   -- dependencies = {
   --    { 'williamboman/mason-lspconfig.nvim' },
   -- { 'hrsh7th/cmp-nvim-lsp' },
   -- { 'hrsh7th/nvim-cmp' },
   -- { 'L3MON4D3/LuaSnip' },
   -- }
   --},
   --{ 'neovim/nvim-lspconfig',
   --config = function()
   --   require "plugins.config.lspconfig"
   --end,
   --},
}
