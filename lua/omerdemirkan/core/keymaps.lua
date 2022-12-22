vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- Typing ii quickly escapes insert mode
keymap.set("i", "ii", "<ESC>")

-- No highlight shortcut: for when shit's
-- highlighted, but you don't want it to be.
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- To avoid "delete character" to copy to
-- your clipboard
keymap.set("n", "x", '"_x"')

-- Split window vertically
keymap.set("n", "<leader>sv", "<C-w>v")

-- Split window horizontally
keymap.set("n", "<leader>sh", "<C-w>s")

-- Make split windows equal width
keymap.set("n", "<leader>se", "<C-w>=")

-- Close current split window
keymap.set("n", "<leader>sx", ":close<CR>")

-- Open new tab
keymap.set("n", "<leader>to", ":tabnew<CR>")

-- Close current tab
keymap.set("n", "<leader>tx", ":tabclose<CR>")

-- Go to next tab
keymap.set("n", "<leader>tn", ":tabn<CR>")

-- Go to previous tab
keymap.set("n", "<leader>tp", ":tabp<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")

-- Find files
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")

-- Find text (live grep)
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")

-- Find current string the cursor is on
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")

-- Find buffers
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")

-- Find help tags
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- Move block around without cut/paste
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Allows cursor to stay in place when moving
-- up and down half a page
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- An optional paste without copy to clipboard.
keymap.set("x", "<leader>p", '"_dP')
