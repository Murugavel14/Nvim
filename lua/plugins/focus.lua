return {
  {
    "beauwilliams/focus.nvim",
    version = false,

    config = function()
      require("focus").setup({
        enable = true,

        autoresize = {
          enable = true,
          width = 0,
          height = 0,
          minwidth = 0,
          minheight = 0,
          height_quickfix = 10,
        },

        split = {
          bufnew = false,
          tmux = false,
        },

        ui = {
          number = false,
          relativenumber = false,
          hybridnumber = false,
          absolutenumber_unfocussed = false,
          cursorline = true,
          signcolumn = true,
          colorcolumn = {
            enable = false,
          },
        },
      })
    end,
  },
}


-- Customize by MURUGAVEL 
