
local tokyonight_status, tokyonight = pcall(require, "tokyonight")

if not tokyonight_status then
  return
end


tokyonight.setup({
  -- transparent = true,
  on_colors = function(colors)
    colors["bg_float"] = "#12121f"
    colors["bg_statusline"] = "#12121f"
    colors["bg_sidebar"] = "#12121f"
    colors["bg_popup"] = "#12121f"
    colors["bg_dark"] = "#12121f"

    colors["bg"] = "#06060a"

    colors["bg_highlight"] = "#181c29"
  end
})

local status, _ = pcall(vim.cmd, "colorscheme tokyonight-night")
if not status then
  print("Color scheme not found!")
  return
end

