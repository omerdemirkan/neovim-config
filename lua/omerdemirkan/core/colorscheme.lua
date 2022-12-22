local tokyonight_status, tokyonight = pcall(require, "tokyonight")

if not tokyonight_status then
	return
end

tokyonight.setup({
	-- transparent = true,
	on_colors = function(colors)
		colors["bg_float"] = "#1a1a2b"
		colors["bg_statusline"] = "#1a1a2b"
		colors["bg_sidebar"] = "#1a1a2b"
		colors["bg_popup"] = "#1a1a2b"
		colors["bg_dark"] = "#1a1a2b"

		colors["bg"] = "#06060a"

		colors["bg_highlight"] = "#222736"
	end,
})

local status, _ = pcall(vim.cmd, "colorscheme tokyonight-night")
if not status then
	print("Color scheme not found!")
	return
end
