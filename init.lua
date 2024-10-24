-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(lazypath)
vim.opt.conceallevel = 2
vim.opt.textwidth = 0
vim.opt.wrapmargin = 0
vim.opt.wrap = true
vim.opt.linebreak = true

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo(
    { { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } },
    true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

-- Create an autocmd group (optional but good practice)
vim.api.nvim_create_augroup("TSOrganizeImports", { clear = true })

-- Set the autocmd for organizing imports on save
vim.api.nvim_create_autocmd("BufWritePre", {
  group = "TSOrganizeImports",
  pattern = { "*.ts", "*.tsx" }, -- Set file types for which the command should run
  callback = function() vim.cmd "TSToolsOrganizeImports" end,
})

require "lazy_setup"
require "polish"
