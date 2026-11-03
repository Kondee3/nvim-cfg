local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>gs", vim.cmd.Git)
map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])
map("n", "<leader>d", [["_d]])
map("n", "Q", "<nop>")
map("n", "<leader>f", vim.lsp.buf.format)
map("n", "<C-k>", "<cmd>cnext<CR>zz")
map("n", "<C-j>", "<cmd>cprev<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("n", "<leader>all", "ggVG")
map("n", "<leader>pe", "ggVG")
map("n", "<leader><leader>", function ()
    vim.cmd ":w"
end)
map("n", "<A-CR>", "<cmd>Trouble diagnostics toggle<cr>")
map("v", "<leader>y", [["+y]])
map("v", "<leader>d", [["_d]])
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("x", "<leader>p", [["_dP]])
map("i", "<C-c>", "<Esc>")

-- Harpoon
local harpoon = require("harpoon")
map("n", "<leader>a", function ()
    harpoon:list():add()
end)
map("n", "<leader>h", function ()
    harpoon.ui:toggle_quick_menu(harpoon:list())
end)
map("n", "<A-1>", function ()
    harpoon:list():select(1)
end)
map("n", "<A-2>", function ()
    harpoon:list():select(2)
end)
map("n", "<A-3>", function ()
    harpoon:list():select(3)
end)
map("n", "<A-4>", function ()
    harpoon:list():select(4)
end)

-- Trouble
map("n", "<leader>xq", "<cmd>Trouble diagnostics toggle focus=false<cr>")

-- Blink
map("i", "<C-space>", function ()
    require('blink.cmp')
    show({ providers = { 'snippets' } })
end)

map("i", "<C-k>", function ()
    require('blink.cmp').select_prev()
end)

map("i", "<C-j>", function ()
    require('blink.cmp').select_next()
end)

map("i", "<C-y>", function ()
    require('blink.cmp').accept()
end)

-- Term
local terminal = require("nvterm.terminal")
local toggle_modes = { 'n', 't' }
map(toggle_modes, "<A-i>", function ()
    terminal.toggle "float"
end)
