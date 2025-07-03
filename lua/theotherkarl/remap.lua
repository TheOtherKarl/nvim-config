-- Create group to assign commands
-- auto-command repeatedly every time a file is resourced
local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.yaml", "*.yml" },
  desc = "Auto-format YAML files after saving",
  callback = function()
    local fileName = vim.api.nvim_buf_get_name(0)
    vim.cmd(":!prettierd" .. fileName)
  end,
  group = autocmd_group,
})

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", [[:Neotree toggle reveal position=current<cr>]])

vim.keymap.set('n', '<c-k>', function()
  require('lsp_signature').toggle_float_win()
end)

vim.keymap.set('n', '<leader>ff', function()
  -- Never request typescript-language-server for formatting


  if string.find(fileName, ".html") then
    vim.cmd(":silent !npx prettier " .. fileName .. " --check --write ")
  elseif string.find(fileName, ".ts") then
    vim.cmd(":silent !npx prettier " .. fileName .. " --check --write ")
  else
    vim.lsp.buf.format({ async = true })
  end
end)

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
  require("vim-with-me").StartVimWithMe()
end)

vim.keymap.set("n", "<leader>svwm", function()
  require("vim-with-me").StopVimWithMe()
end)


vim.keymap.set("x", "<leader>p", "\"_dp")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>y", "\"+y")

-- debug keymaps
vim.keymap.set("n", "<leader>do", function()
  vim.diagnostic.open_float()
end)
vim.keymap.set("n", "gtn", function()
  vim.diagnostic.goto_next()
end)
