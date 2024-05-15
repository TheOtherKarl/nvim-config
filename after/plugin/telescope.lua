local builtin = require('telescope.builtin')

require('telescope').setup{
  defaults = {
    path_display = { "shorten" }
  }
}


--require('telescope').setup{
--	defaults = {
--		path_display={"smart"} 
--	}
--}

-- require("telescope.builtin").help_tags()
-- require("telescope.builtin").man_pages()
-- a
--

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)

-- builtin.find_files{ path_display = { "truncate" } }

--require("telescope.builtin").find_files{ path_display = { "truncate" } }
