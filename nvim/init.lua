vim.opt.colorcolumn = "80"
vim.opt.wrap = false
vim.opt.number = true
vim.opt.whichwrap = "<>[],b,s"

-- set tab character visible representation
vim.opt.listchars = "tab:▷▷⋮"
vim.cmd [[set invlist]] -- no idea why vim.opt.invlist doesn't work

-- preserve existing tab and indent style of existing file
vim.opt.expandtab = false
vim.opt.copyindent = true
vim.opt.preserveindent = true
