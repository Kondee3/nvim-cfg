local lsp_list = { 'emmylua_ls', 'phpactor' }
local lsp = vim.lsp
local lsp_config = lsp.config
lsp_config['emmylua_ls'] = {
    cmd = { 'emmylua_ls' },
    filetypes = { 'lua' },
    root_markers = { { '.emmyrc.json', '.luarc.json' }, '.git' },
    settings = {
        runtime = {
            version = 'LuaJIT'
        },
        Lua = {

            diagnostics = {
                globals = { "vim" }
            }
        }
    }
}
vim.lsp.enable('emmylua_ls')
lsp_config['phpactor'] = {
    cmd = { 'phpactor', 'language-server' },
    filetypes = { 'php' },
    root_markers = { '.git', 'composer.json', '.phpactor.json', '.phpactor.yml' },
    workspace_required = true,
    init_options = {
        ["language_server_phpstan.enabled"] = false,
        ["language_server_psalm.enabled"] = false
    }
}
vim.lsp.enable('phpactor')
