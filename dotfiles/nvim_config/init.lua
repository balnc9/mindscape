vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false

-----------------------------------------------------------
-- Plugin Manager (lazy.nvim)
-----------------------------------------------------------
local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print("Installing lazy.nvim....")
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable",
      path,
    })
  end
end

function lazy.setup(plugins)
  if vim.g.plugins_ready then
    return
  end
  lazy.install(lazy.path)
  vim.opt.rtp:prepend(lazy.path)
  require("lazy").setup(plugins, lazy.opts)
  vim.g.plugins_ready = true
end

lazy.path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
lazy.opts = {}

lazy.setup({
  { "folke/tokyonight.nvim" },       -- Theme
  { "nvim-lualine/lualine.nvim" },   -- Statusline
  {
    "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here
      vim.g.vimtex_view_method = "zathura"
    end,
  },
})

-----------------------------------------------------------
-- Plugin configs
-----------------------------------------------------------

-- Theme
vim.opt.termguicolors = true
vim.cmd.colorscheme("tokyonight")

-- Lualine (statusline)
require("lualine").setup({
  options = {
    icons_enabled = false,
    section_separators = "",
    component_separators = "",
  },
})

-----------------------------------------------------------
-- Vimscript plugin example (netrw)
-----------------------------------------------------------
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 30

-----------------------------------------------------------
-- Autocommands
-----------------------------------------------------------
local augroup = vim.api.nvim_create_augroup("user_cmds", { clear = true })

-- Close help/man pages with 'q'
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "help", "man" },
  group = augroup,
  desc = "Press q to quit help/man",
  command = "nnoremap <buffer> q <cmd>quit<cr>",
})

-- Highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  desc = "Highlight on yank",
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
  end,
})