-- Exit insert mode with jj
vim.keymap.set("i", "jj", "<Esc>")

-- Alternate buffer
vim.keymap.set("n", "<Leader><space>", ":b#<CR>")

-- FZF Bindings
vim.keymap.set("n", "<Leader>bh", ":FzHistory<CR>")
vim.keymap.set("n", "<Leader>bs", ":new<CR>:FzHistory<CR>")
vim.keymap.set("n", "<Leader>bv", ":vnew<CR>:FzHistory<CR>")
vim.keymap.set("n", "<Leader>bb", ":FzBuffers<CR>")
vim.keymap.set("n", "<Leader>bf", ":FzFiles<CR>")

-- Edit vimrc
vim.keymap.set("n", "<leader>v", ":tabedit $MYVIMRC<CR>")

-- Folding with Enter
vim.keymap.set("n", "<CR>", function()
  return vim.fn.foldlevel(".") > 0 and "za" or "<CR>"
end, { expr = true })

-- Save with sudo
vim.keymap.set("n", "<Leader>ww", ":w !sudo tee %<CR>")

-- Close buffer
vim.keymap.set("n", "<C-c>", ":Bdelete<CR>")

-- Tag search
vim.keymap.set("n", "<Leader>s", ":tag ")

-- Grep with fzf
vim.keymap.set("n", "<Leader>F", ":FzAg ")

-- Scroll offset
vim.opt.scrolloff = 8

-- Jump to tag
vim.keymap.set("n", "<Leader>j", "<C-]>")
