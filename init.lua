vim.opt.number = true

vim.opt.relativenumber = true

vim.opt.wrap = false

vim.pack.add({
  { src = "https://github.com/neovim/nvim-lspconfig" }, -- LSP configs
  --  { src = "https://github.com/Saghen/blink.cmp" },      -- Completion
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" }, -- Syntax/parser
--    { src = "https://github.com/stevearc/conform.nvim" }, -- Formatting
  --  { src = "https://github.com/mfussenegger/nvim-dap" }, -- Debugger
})


vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            telemetry = {
                enable = false,
            },
        },
    },
})

vim.lsp.config("rust_analyzer", {})

vim.lsp.config("csharp_ls", {})

vim.lsp.config("ts_ls", {})

vim.lsp.config("jsonls", {})

vim.lsp.enable({
    "lua_ls",
    "rust_analyzer",
    "csharp_ls",
    "ts_ls",
    "jsonls",
})

