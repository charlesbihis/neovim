-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

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

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<A-S-P>", function()
  harpoon:list():prev()
end)
vim.keymap.set("n", "<A-S-N>", function()
  harpoon:list():next()
end)
