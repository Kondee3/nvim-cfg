return {
    {
        --"catppuccin/nvim",
        "nyoom-engineering/oxocarbon.nvim",
        --name = "catppuccin",
        --opts = {
        --  flavour = "mocha"
        --},
        priority = 1000,
        config = function ()
            vim.cmd.colorscheme("oxocarbon")
        end
    }
}
