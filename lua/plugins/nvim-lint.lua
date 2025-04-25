return {
  {
    "mfussenegger/nvim-lint",
    config = function()
      require("lint").linters_by_ft = {
        markdown = { "markdownlint" },
        typescript = { "eslint" },
        typescriptreact = { "eslint" },
        javascript = { "eslint" },
        javascriptreact = { "eslint" },
      }

      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function() require("lint").try_lint() end,
      })
    end,
  },
}
