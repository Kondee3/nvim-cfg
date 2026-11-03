 return {
    "rust-lang/rust.vim",
    ft = "rust",
    lazy = true,
    init = function()

      vim.g.rustfmt_autosave = 1
    end,
  }
