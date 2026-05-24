return {
  {
    "stevearc/conform.nvim",
     event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    lazy = false, -- change into small
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Color setup for .txt files
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.cmd("syntax on")

      vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
        pattern = "*.txt",
        command = "set filetype=markdown",
      })
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
   	"nvim-treesitter/nvim-treesitter",
   	opts = {
   		ensure_installed = {
   			"vim", 
        "lua", 
        "vimdoc",
        "html", 
        "css"
   		},
   	},
   },
  --  -- rm snippey
  --  {
  --   "L3MON4D3/LuaSnip",
  --   config = function()
  --     require("configs.luasnip")
  --   end,
  -- },
   -- Remove unwanted snippet 
   -- {
   --  "rafamadriz/friendly-snippets",
   --  config = function()
   --    require("luasnip.loaders.from_vscode").lazy_load()
   --
   --    -- unload Tcl snippets 
   --     -- require("luasnip").filetype_extend("tcl", {})
   --     -- end,
   --    --   {
   --    --   exclude = {
   --    --     "tcl",
   --    --   },
   --    -- })
   --    new add
   {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load({
        exclude = { "tcl" },
      })
    end,
  -- }
  },
  -- add gitsign.nvim
  {
    "lewis6991/gitsigns.nvim",
    event = "User FilePost",
    opts = {},
  },
  -- add toggleterm.nvim
  {
    "akinsho/toggleterm.nvim",
    event = "User FilePost",
    opts = {},
  },
  -- add bufferline.nvim
  {
    "akinsho/bufferline.nvim",
    event = "User FilePost",
    opts = {},
  },
  -- add git-conflict.nvim 
  {
    "akinsho/git-conflict.nvim",
    event = "User FilePost",
    opts = {},
  },
  -- add focus.nvim
  {
    "beauwilliams/focus.nvim",
    event = "User FilePost",
    opts = {},
  },
  -- add godot-scenetree.nvim
  -- {
  --   "topaxi/godot.nvim",
  --   event = "User FilePost",
  --   opts = {},
  -- },
}   

