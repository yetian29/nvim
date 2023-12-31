vim.g.netrw_banner = 0


-- copiar al portapapeles del os
vim.opt.clipboard = "unnamedplus"

-- Sin limite de longitud de la linea
vim.opt.wrap = false

-- cuando busca no se queda con color y mientra busca se pone de color
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- para mejorar los colores
vim.opt.termguicolors = true

-- el cursor siempre queda con 8 espacios para arriba y para abajo
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

