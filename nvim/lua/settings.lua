-- Colorscheme
vim.cmd("colorscheme monokai")
  -- Red comments
  vim.cmd("highlight Comment guifg=red ctermfg=red")

-- Encoding
vim.opt.encoding = "utf-8"

-- Autoread files when changed externally
vim.opt.autoread = true

-- Leader Key
vim.g.mapleader = ","
vim.keymap.set({ "n", "v" }, "<space>", "<leader>")

-- UI
vim.opt.number = true
vim.opt.spelllang = { "de", "en" }
vim.opt.showbreak = "…"
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.inccommand = "split"

-- Tabs & Indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Cursor Highlight
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.cmd("highlight cursorcolumn cterm=NONE ctermbg=237 ctermfg=NONE")

-- Column Highlight
vim.cmd("highlight colorcolumn ctermbg=237")
