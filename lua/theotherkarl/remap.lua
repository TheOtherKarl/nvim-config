vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", [[:Neotree toggle reveal position=current<cr>]])
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Neotree)
-- vim.keymap.set("n", "<leader>pv", function ()
--  vim.cmd.Neotree({ toggle = true })
-- end)

-- lsp_signature doesn't exists atm
-- vim.keymap.set({ 'n' }, '<C-k>', function()
-- 	require('lsp_signature').toggle_float_win()
-- end, { silent = true, noremap = true, desc = 'toggle signature' })
--

vim.keymap.set('n', '<c-k>', function()
  require('lsp_signature').toggle_float_win()
end)

vim.keymap.set('n', '<leader>ff', function()
  -- Never request typescript-language-server for formatting
  vim.lsp.buf.format {
    filter = function(client) return client.name ~= "tsserver" end
  }

  vim.lsp.buf.format({ async = true })
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


-- greates remap ever
vim.keymap.set("x", "<leader>p", "\"_dp")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>y", "\"+y")


-- marc keymaps
vim.keymap.set("n", "<leader>do", function()
  vim.diagnostic.open_float()
end)

vim.keymap.set("n", "<leader>gtn", function()
  vim.diagnostic.goto_next()
end)


-- vim.api.nvim_create_autocmd("BufWritePre", { pattern = { "*.rs" }, command = "RustFmt" })
