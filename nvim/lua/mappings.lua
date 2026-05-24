require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- add verilog autoformat

vim.keymap.set("n", "<leader>lf", function()
  vim.lsp.buf.format()
end, { desc = "Format file" })

-- add bufferline
map("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next Buffer" })
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Prev Buffer" })
map("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Close Buffer" })
