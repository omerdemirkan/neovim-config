vim.g.mapleader = " "

local map = vim.keymap.set -- for conciseness

-- No highlight shortcut: for when shit's
-- highlighted, but you don't want it to be.
map("n", "<leader>nh", ":nohl<CR>")

-- To avoid "delete character" to copy to
-- your clipboard
map("n", "x", '"_x"')

-- Split window vertically
map("n", "<leader>sv", "<C-w>v")

-- Split window horizontally
map("n", "<leader>sh", "<C-w>s")

-- Make split windows equal width
map("n", "<leader>se", "<C-w>=")

-- Close current split window
map("n", "<leader>sx", ":close<CR>")

-- Open new tab
map("n", "<leader>to", ":tabnew<CR>")

-- Close current tab
map("n", "<leader>tx", ":tabclose<CR>")

-- Go to next tab
map("n", "<leader>tn", ":tabn<CR>")

-- Go to previous tab
map("n", "<leader>tp", ":tabp<CR>")

-- nvim-tree
map("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Finder -> files
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>")

-- Finder -> live grep
map("n", "<leader>fl", "<CMD>Telescope live_grep<CR>")

-- Finder -> symbols
map("n", "<leader>fs", "<CMD>Telescope lsp_document_symbols<CR>")

-- Finder -> current string the cursor is on
map("n", "<leader>fy", "<CMD>Telescope grep_string<CR>")

-- Find buffers
map("n", "<leader>fb", "<CMD>Telescope buffers<CR>")

-- Find help tags
map("n", "<leader>fh", "<CMD>Telescope help_tags<CR>")

-- Move block around without cut/paste
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Allows cursor to stay in place when moving
-- up and down half a page
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
-- To get rid of my dependence on these.
-- Use <C-u> and <C-d> instead
map("n", "{", "<nop>")
map("n", "}", "<nop>")

-- An optional paste without copy to clipboard.
map("x", "<leader>p", '"_dP')

map("n", "<leader>bp", ":bprev<cr>")
map("n", "<leader>bn", ":bnext<cr>")

-- Harpoon
local mark_status, mark = pcall(require, "harpoon.mark")
local ui_status, ui = pcall(require, "harpoon.ui")

if mark_status and ui_status then
	-- Marks -> add
	map("n", "<leader>ma", mark.add_file)
	-- Marks -> view
	map("n", "<leader>mv", ui.toggle_quick_menu)

	map("n", "<leader>1", function()
		ui.nav_file(1)
	end)

	map("n", "<leader>2", function()
		ui.nav_file(2)
	end)

	map("n", "<leader>3", function()
		ui.nav_file(3)
	end)

	map("n", "<leader>4", function()
		ui.nav_file(4)
	end)
end
