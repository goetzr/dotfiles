return {
	'WhoIsSethDaniel/mason-tool-installer.nvim',
	config = function()
		-- Ensure the servers configured in lspservers.lua are installed.
		--
		-- To check the current status of installed tools and/or manually install
		-- other tools, you can run
		--    :Mason
		--
		-- You can press `g?` for help in this menu.
		local servers = require("config.lsp-servers").servers
		local ensure_installed = vim.tbl_keys(servers or {})
		vim.list_extend(ensure_installed, {
			-- You can add other tools here that you want Mason to install
		})

		require('mason-tool-installer').setup { ensure_installed = ensure_installed }
	end
}
