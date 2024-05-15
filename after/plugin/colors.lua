-- vim.cmd[[colorscheme tokyonight]]

function ColorMyPencils(color)
	-- color = color or "rose-pine"
    -- vim.cmd.colorscheme(color)
    -- vim.cmd.colorscheme("tokyonight-night")
    vim.cmd.colorscheme "catppuccin-frappe"
	vim.api.nvim_set_hl(1, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(1, "NormalFloat", {bg = "none"})

end

ColorMyPencils()
