return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {
            "vim",
            "vimdoc",
            "lua",
            "c",
            "markdown",
            "markdown_inline",
            "python",
            "rust"
        },
        highlight = {
            enable = true
        },
        indent = {
            enable = true,
            disable = {
                "python"
            }
        }
    }
}
