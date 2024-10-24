return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000, -- Load this colorscheme before other plugins
    config = function()
      require("kanagawa").setup {
        theme = "wave", -- Set the theme to wave
      }
    end,
  },
}
