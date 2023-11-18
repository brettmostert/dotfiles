--vim.g.lf_netrw = 1

require("lf").setup({
   escape_quit = false,
   border = "rounded",
   --border = "double",
   tmux = false,
   default_file_manager = true
})

vim.keymap.set("n", "<leader>lf", "<Cmd>Lf<CR>")
vim.api.nvim_create_autocmd("User", {
   pattern = "LfTermEnter",
   callback = function(a)
      vim.api.nvim_buf_set_keymap(a.buf, "t", "q", "q", { nowait = true })
   end
})
