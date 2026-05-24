require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
--
-- -- Add new code for verilog
--
-- local lspconfig = require("lspconfig")
--
-- lspconfig.verible.setup {
--   cmd = { "verible-verilog-ls" },
--   filetypes = { "verilog", "systemverilog" },
-- }
--
-- -- Remove unwanted snippet 
-- require("luasnip.loaders.from_vscode").lazy_load({
--   include = {
--     "verilog",
--     "systemverilog",
--     "python",
--   },
-- })
