local colors = require("lazymin.colors").palette

local M = {}

function M.apply()
	local p = colors

	-- Override all MiniIcons colors to use consistent foreground
	vim.api.nvim_set_hl(0, "MiniIconsAzure", { fg = p.sky_blue })
	vim.api.nvim_set_hl(0, "MiniIconsBlue", { fg = p.blue })
	vim.api.nvim_set_hl(0, "MiniIconsCyan", { fg = p.cyan })
	vim.api.nvim_set_hl(0, "MiniIconsGreen", { fg = p.green })
	vim.api.nvim_set_hl(0, "MiniIconsGrey", { fg = p.gray1 })
	vim.api.nvim_set_hl(0, "MiniIconsOrange", { fg = p.orange })
	vim.api.nvim_set_hl(0, "MiniIconsPurple", { fg = p.purple })
	vim.api.nvim_set_hl(0, "MiniIconsRed", { fg = p.red })
	vim.api.nvim_set_hl(0, "MiniIconsYellow", { fg = p.yellow })
end

return M
