-- adding custom plugin

return {
  {
    "akinsho/git-conflict.nvim",
    version = "*",

    config = function()
      require("git-conflict").setup({
        default_mappings = true,
      })
    end,
  },
}


-- Customize by MURUGAVEL 
