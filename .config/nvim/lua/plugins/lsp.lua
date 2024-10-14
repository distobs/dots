return {
	{
		'VonHeikemen/lsp-zero.nvim',
		dependencies = {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			'neovim/nvim-lspconfig',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/nvim-cmp',
		},
		config = function ()
			local cmp = require('cmp')
			local cmplsp = require('cmp_nvim_lsp')
			local lzero = require('lsp-zero')
			local lsp = require('lspconfig')

			local lattach = function (client, bufnr)
				local opts = {buffer = bufnr}
				client.server_capabilities.semanticTokensProvider = nil
			end

			lzero.extend_lspconfig({
				sign_text = true,
				lsp_attach = lattach,
				capabilities = cmplsp.default_capabilities()
			})

			require('mason').setup({})
			require('mason-lspconfig').setup({
				handlers = {
					function(server_name)
						lsp[server_name].setup({})
					end
				}
			})

			cmp.setup({
				sources = {
					{ name = 'nvim_lsp' }
				},
				snippet = {
					expand = function (args)
						vim.snippet.expand(args.body)
					end
				},
				mapping = {
					['<CR>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.confirm({
								select = true,
							})
						else
							fallback()
						end
					end),

					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						else
							fallback()
						end
					end, { "i", "s" }),

					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						else
							fallback()
						end
					end, { "i", "s" }),
				}
			})
		end
	}
}
