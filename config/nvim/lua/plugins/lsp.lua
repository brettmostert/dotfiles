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
      { 'hrsh7th/cmp-vsnip' },
      { 'hrsh7th/vim-vsnip' },
   }
}
