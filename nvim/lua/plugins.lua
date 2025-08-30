return require("lazy").setup({
  "airblade/vim-gitgutter",                               -- show Git changes
  "bling/vim-airline",                                    -- nice status bar
  { "francoiscabrol/ranger.vim", keys = { ",f" } },       -- ranger file manager
  "godlygeek/tabular",                                    -- align things quickly
  "jamessan/vim-gnupg",                                   -- transparently edit encrypted files
  "jiangmiao/auto-pairs",
  "mfussenegger/nvim-dap",                                -- debug adapter protocol
  "suketa/nvim-dap-ruby",                                 -- dap support for ruby
  "junegunn/fzf.vim",                                     -- fuzzy finder
  "rhysd/committia.vim",                                  -- show diff while composing commit messages
  { "RRethy/vim-hexokinase", build = "make hexokinase" }, -- color preview

  {
    "tanvirtin/monokai.nvim",
    config = function()
      vim.cmd("colorscheme monokai")                      -- Colorscheme monokai
      vim.cmd("highlight Comment guifg=red ctermfg=red")  -- … but with red comments
    end,
  },
  -- Are those still useful/required?
  --
  -- "lifepillar/vim-mucomplete"
  -- "moll/vim-bbye",
  -- "rhysd/git-messenger.vim",
})
