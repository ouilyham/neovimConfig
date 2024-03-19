return {
	{
		"mfussenegger/nvim-lint",
		event = "LazyFile",
		config = function()
			local lint = require("lint")
			local events = { "BufEnter", "BufWritePost", "InsertLeave" }
			lint.linters_by_ft = {
				elixir = { "credo" },
				html = { "htmlhint" },
			}
			vim.api.nvim_create_autocmd(events, {
				group = vim.api.nvim_create_augroup("nvim-lint", { clear = true }),
				callback = function()
					lint.try_lint()
				end,
			})
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = {
			notify_on_error = false,
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { { "prettierd", "prettier" } },
				html = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
			},
		},
	},
	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			git = { enable = true },
		},
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"html-lsp",
				"prettier",
				"prettierd",
				"elixir-ls",
				"stylua",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			{ "j-hui/fidget.nvim", opts = {} },
		},
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = { "elixir", "erlang", "javascript", "typescript", "html", "css", "tsx" },
		},
	},
}
