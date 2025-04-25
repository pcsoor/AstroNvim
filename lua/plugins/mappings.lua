return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          ["<S-Up>"] = { ":m-2<CR>", desc = "Move line up" },
          ["<Leader>b"] = { desc = "Buffers" },
          ["<S-Down>"] = { ":m+<CR>", desc = "Move line down" },
          ["<Leader>fr"] = {
            function() require("telescope.builtin").lsp_references() end,
            desc = "Find references",
          },
                  -- navigate buffer tabs
          ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
          ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

          -- mappings seen under group name "Buffer"
          ["<Leader>bd"] = {
            function()
              require("astroui.status.heirline").buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Close buffer from tabline",
          },
          ["<Leader>sd"] = {
            function() require("telescope.builtin").diagnostics() end,
            desc = "[S]earch [D]iagnostics"
          },
          ["<C-d>"] = {"<C-d>zz"},
          ["<C-u>"] = {"<C-u>zz"},
          ["n"] = {"nzzzv"},
          ["N"] = {"Nzzzv"},
        },
        v = {
          ["K"] = {":m '<-2<CR>gv=gv"},
          ["J"] = {":m '>+1<CR>gv=gv"},
          [">"] = {">gv"},
          ["<"] = {"<gv"}
        },
        t = {},
        i = {
          ["<S-Up>"] = { "<Esc>:m-2<CR>", desc = "Move line up in insert mode" },
          ["<S-Down>"] = { "<Esc>:m+<CR>", desc = "Move line down in insert mode" },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {},
  },
}
