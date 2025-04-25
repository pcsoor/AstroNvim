return {
  "nvim-treesitter/nvim-treesitter-context",
  event = "VeryLazy",
  config = function()
    require("treesitter-context").setup({
      -- -- options you want to override:
      -- enable = true,         -- Enable this plugin
      max_lines = 3,         -- How many lines the context window can span
      multiline_threshold = 10,
      trim_scope = "inner",
      -- mode = "cursor",       -- Line used to calculate context (cursor or topline)
      -- separator = nil,       -- Add a separator like "---" between context and code
    })
  end,
}
