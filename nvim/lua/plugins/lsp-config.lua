return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = 
                    {"lua_ls", 
                    "ts_ls", 
                    "clangd",
                    "pyright",
                    "cssls",
                    "html"}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
            local capabilities = require('cmp_nvim_lsp').default_capabilities() 

			lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
			lspconfig.ts_ls.setup({
                capabilities = capabilities
            })
			lspconfig.clangd.setup({
                capabilities = capabilities
            })
            lspconfig.cssls.setup({
                capabilities = capabilities
            })
            lspconfig.html.setup({
                capabilities = capabilities
            })
            lspconfig.pyright.setup({
                capabilities = capabilities
            })

			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gD', vim.lsp.buf.definition, {})
			vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

            vim.diagnostic.config({
                virtual_text = true, --Inline errors
                signs = true,
                underline = false,
                update_in_insert = true
            })

		end
	},
}
