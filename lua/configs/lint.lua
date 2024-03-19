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
