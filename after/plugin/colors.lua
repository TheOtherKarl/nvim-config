function ColorMyPencils(color)
    color = color or "catppuccin-frappe"
	-- olor = color or "catppuccin-mocha"
    -- color = color or 'rose-pine'
    vim.cmd.colorscheme(color)
   --  vim.cmd.colorscheme "catppuccin-frappe"
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

ColorMyPencils()
