vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>tt", ":Trouble<CR>")
vim.keymap.set("n", "<leader>tq", ":TroubleClose<CR>")

vim.keymap.set("n", "J", ":m +1<CR>")
vim.keymap.set("n", "K", ":m -2<CR>")

vim.keymap.set("n", "<leader>h", function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end)

vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
    cmd = "lazygit",
    hidden = true,
    size = 40,
    direction = "float",
    name = "lazygit",
})

function _lazygit_toggle()
  lazygit:toggle()
end
vim.keymap.set("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>")
