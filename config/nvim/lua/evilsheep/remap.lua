vim.g.mapleader = " "

-- Trouble
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>bl", ":Telescope buffers<CR>")

vim.keymap.set("n", "<leader>b.", ":bnext<CR>")
vim.keymap.set("n", "<leader>b,", ":bprev<CR>")
vim.keymap.set("n", "<leader>.", ":tabn<CR>")
vim.keymap.set("n", "<leader>,", ":tabp<CR>")
vim.keymap.set("n", "<leader>nt", ":tabnew<CR>")

vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>p",'"+p')

vim.keymap.set("n", "<leader><leader>", function()
   vim.cmd("so")
end)
