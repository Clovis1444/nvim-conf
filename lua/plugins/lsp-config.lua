-- LSP plugins
return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                    "cmake",
                    "eslint",
                    "jsonls",
                    "marksman",
                    "rust_analyzer",
                    "harper_ls",
                    "yamlls",
                    "bashls",
                    "html",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        -- Each LSP must be setup; pass lua table to setup to configure the LSP
        -- There is a global keymaps after LSPs setup
        config = function()
            -- Note: use next line to tel LSP to use nvim-cmp as a completion engine
            -- Each time you setup new LSP you should pass this variable to it
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.clangd.setup({ capabilities = capabilities })
            lspconfig.cmake.setup({ capabilities = capabilities })
            -- lspconfig.eslint.setup({ capabilities = capabilities })
            lspconfig.jsonls.setup({ capabilities = capabilities })
            lspconfig.marksman.setup({ capabilities = capabilities })
            lspconfig.rust_analyzer.setup({
                -- Server-specific settings. See `:help lspconfig-setup`
                settings = {
                    ["rust-analyzer"] = {},
                },
                capabilities = capabilities,
            })
            --lspconfig.harper_ls.setup{}
            lspconfig.yamlls.setup({ capabilities = capabilities })
            lspconfig.bashls.setup({ capabilities = capabilities })
            lspconfig.html.setup({ capabilities = capabilities })

            -- GLOBAL KEYMAPS
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "dg", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, {})
        end,
    },
}
