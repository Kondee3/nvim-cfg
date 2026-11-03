local g = vim.g
return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function ()
        g.loaded_netrw = 1
        g.loaded_netrwPlugin = 1
        require("nvim-tree").setup({
            view = {
                side = "right",
                width = 30,
                signcolumn = "no"
            }
        })
        vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle nvim-tree" })
        vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "Toggle nvim-tree" })
    end
}
