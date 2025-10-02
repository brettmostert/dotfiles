local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.set_preferences({
   sign_icons = {}
})

--lsp.on_attach(function(client, bufnr)
--   local opts = { buffer = bufnr, remap = false }
--   lsp.default_keymaps({ buffer = bufnr })
--   vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
--   vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
--   vim.keymap.set("n", "<leader>cws", function() vim.lsp.buf.workspace_symbol() end, opts)
--   vim.keymap.set("n", "<leader>cd", function() vim.diagnostic.open_float() end, opts)
--   vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
--   vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
--   vim.keymap.set("n", "<leader>cca", function() vim.lsp.buf.code_action() end, opts)
--   vim.keymap.set("n", "<leader>cri", function() vim.lsp.buf.references() end, opts)
--   vim.keymap.set("n", "<leader>crn", function() vim.lsp.buf.rename() end, opts)
--   vim.keymap.set("i", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
--end)

-- require('java').setup()
local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config
lsp_defaults.capabilities = vim.tbl_deep_extend(
   'force',
   lsp_defaults.capabilities,
   require('cmp_nvim_lsp').default_capabilities()
)

--local capabilities = require('cmp_nvim_lsp').default_capabilities()
local default_setup = function(server)
   -- lspconfig[server].setup({ capabilities = capabilities })
   lspconfig[server].setup({})
end

require('mason').setup({})
require('mason-lspconfig').setup({
   ensure_installed = {
      lua_ls, tsserver, jsonls, gopls
   },
   handlers = { default_setup },
})

local cmp = require('cmp')
cmp.setup({
   sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
   }, {
      { name = 'buffer' },
   }),
   mapping = cmp.mapping.preset.insert({
      -- Enter key confirms completion item
      ['<CR>'] = cmp.mapping.confirm({ select = false }),

      -- Ctrl + space triggers completion menu
      ['<C-Space>'] = cmp.mapping.complete(),
   }),
   snippet = {
      expand = function(args)
         vim.fn["vsnip#anonymous"](args.body)
      end,
   },
})
lspconfig.helm_ls.setup {
   settings = {
      ['helm-ls'] = {
         yamlls = {
            path = "yaml-language-server",
         }
      }
   }
}

lspconfig.yamlls.setup {}
-- lspconfig.jdtls.setup({})
cmp.setup.filetype({ "sql" }, {
  sources = {
    { name = "vim-dadbod-completion" },
    { name = "buffer" },
  },
})
--lspconfig.yamlls.setup({
--      settings = {
--        yaml = {
--           schemas = { kubernetes = "globPattern" },
--      }
--  }
--})

-- local yamlls = require('yaml-language-server')
--yamlls.setup({
--    settings = {
--       yaml = {
--         schemas = { kubernetes = "globPattern" },
--   }
--}})
--
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd('LspAttach', {
   group = vim.api.nvim_create_augroup('UserLspConfig', {}),
   callback = function(ev)
      -- Enable completion triggered by <c-x><c-o>
      vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

      -- Buffer local mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      local opts = { buffer = ev.buf }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
      vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
      vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
      vim.keymap.set('n', '<space>wl', function()
         print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, opts)
      vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
      vim.keymap.set('n', '<f>', function()
         vim.lsp.buf.format { async = true }
      end, opts)
      vim.keymap.set('i', '<C-f>', function()
         vim.lsp.buf.format { async = true }
      end, opts)
   end,
})
