return {
   "nvim-tree/nvim-tree.lua",
   verson = "*",
   lazy = false,
   dependencies = {
      "nvim-tree/nvim-web-devicons",
   },
   config = function()
      require("nvim-tree").setup {
         hijack_netrw = false,
         git = {
            enable = true,
         },
         renderer = {
            highlight_git = true,

            icons = {
               show = {
                  git = true,
                  file = false,
                  folder = false,
                  folder_arrow = true,
               },
            },
         },
         view = {
            side = "right",
         },
      }
   end,
}
