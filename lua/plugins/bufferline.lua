return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup {
      highlights = {
        tab_separator_selected = {
          underline = true,
        },
      },
    }
  end
}
