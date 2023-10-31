--
-- General
--

vim.opt.termguicolors = true -- Works best with RGB colors

vim.opt.fileencoding = 'utf-8'
vim.opt.swapfile = false
vim.o.autoread = true

--
-- Interface
--

vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.scrolloff = 1
vim.opt.list = true -- Display vim.opt.listchars
vim.opt.listchars = {
    eol = "↴", -- Display "↴" for end of lines
    trail = "·", -- Display "·" for trailing spaces
    tab = "»·" -- Display "»·" for tabs
}

-- 
-- Indentation
--

vim.opt.expandtab = true -- Disable tab
vim.opt.shiftwidth = 2 -- Number of spaces for an indent

--
-- Search
--

vim.opt.ignorecase = true -- No case sensitive
