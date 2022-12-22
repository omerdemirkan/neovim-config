local tokyonight_status, tokyonight = pcall(require, "tokyonight")

if not tokyonight_status then
	return
end

tokyonight.setup({
	-- transparent = true,
	on_colors = function(colors)
		colors["bg_float"] = "#181b24"
		colors["bg_statusline"] = "#181b24"
		colors["bg_sidebar"] = "#181b24"
		colors["bg_popup"] = "#181b24"
		colors["bg_dark"] = "#181b24"

		colors["bg"] = "#06060a"

		colors["bg_highlight"] = "#272a33"

		colors["border"] = "#ffffff"
	end,
})

local status, _ = pcall(vim.cmd, "colorscheme tokyonight-night")
if not status then
	print("Color scheme not found!")
	return
end
