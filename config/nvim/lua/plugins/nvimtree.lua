return {
   "nvim-tree/nvim-tree.lua",
   version = "*",
   lazy = false,
   dependencies = {
      "nvim-tree/nvim-web-devicons",
   },
   config = function()
      require("nvim-tree").setup {
         disable_netrw = false,
         hijack_netrw = false,
         view = {
            side = "right"
         },
         renderer = {
            highlight_git = true,

         },
      }
   end,
}
