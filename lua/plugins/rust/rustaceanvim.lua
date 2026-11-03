return {
    "mrcjkb/rustaceanvim",
    lazy = true,
    version = "^9",
    ft = { "rust" },
    init = function ()
        vim.g.rustaceanvim = {
            tools = {},
            server = {
                on_attach = function (client, bufnr)
                    vim.lsp.inlay_hint.enable(true)
                end,
                default_settings = {
                    ["rust-analyzer"] = {
                        cargo = {
                            allFeatures = true,
                            loadOutDirsFromCheck = true,
                            runBuildScripts = true
                        },
                        check = {
                            command = "clippy"
                        },
                        procMacro = {
                            enable = true
                        }
                    }
                }
            },
            dap = {}
        }
    end
}
