return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	config = function()
		-- To check the current status of installed tools and/or manually install
		-- other tools, you can run
		--    :Mason
		--
		-- You can press `g?` for help in this menu.

		local lsp_servers = require("config.lsp-servers").servers
		lsp_servers = vim.tbl_keys(lsp_servers or {})

		local formatters = { "ruff", "gersemi" }

		local ensure_installed = vim.tbl_extend("force", lsp_servers, formatters)
		vim.list_extend(ensure_installed, {
			-- You can add other tools here that you want Mason to install
		})

		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })
	end,
}
