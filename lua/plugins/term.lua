return {
    "NvChad/nvterm",
    config = function ()
        require("nvterm").setup()
    end,
    terminals = {
        type_opts = {
            float = {
                relative = "editor",
                row = 0.2,
                col = 0.15,
                width = 0.7,
                height = 0.6,
                border = "solid"
            }
        }
    }
}
