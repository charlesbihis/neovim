-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- preserve paste buffer when pasting over text
vim.keymap.set("x", "<leader>p", '"_dp')

-- page up and down while keeping cursor in the center of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- allow moving of lines while in visual mode using J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep selected search term in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- harpoon
local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<A-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<A-j>", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<A-k>", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<A-l>", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<A-;>", function()
  harpoon:list():select(4)
end)

vim.keymap.set("n", "<A-u>", function()
  harpoon:list():select(5)
end)
vim.keymap.set("n", "<A-i>", function()
  harpoon:list():select(6)
end)
vim.keymap.set("n", "<A-o>", function()
  harpoon:list():select(7)
end)
vim.keymap.set("n", "<A-p>", function()
  harpoon:list():select(8)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<A-S-P>", function()
  harpoon:list():prev()
end)
vim.keymap.set("n", "<A-S-N>", function()
  harpoon:list():next()
end)
