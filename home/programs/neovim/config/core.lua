--
-- General
--

vim.opt.termguicolors = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.fileencoding = 'utf-8'
vim.opt.swapfile = false

--
-- Interface
--

vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.scrolloff = 1
vim.opt.list = true
vim.opt.listchars = {
    eol = "↴", -- Display "↴" for end of lines
    trail = "·", -- Display "·" for trailing spaces
    tab = "»·" -- Display "»·" for tabs
}

-- 
-- Indentation
--

vim.opt.expandtab = true -- Disable tab
vim.opt.shiftwidth = 4 -- Number of spaces for an indent

--
-- Search
--

vim.opt.ignorecase = true -- No case sensitive
