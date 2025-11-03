local M = {}

-- Setup plugin.
function M.setup()
	-- Only continue if aerial is available.
	local ok, aerial = pcall(require, "aerial")
	if not ok then
		return
	end

	-- Auto command to update the content of the window title.
	vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter", "CursorMoved" }, {
		callback = function()
			local winid = vim.api.nvim_get_current_win()
			local config = vim.api.nvim_win_get_config(winid)

			-- Check if this is a normal window and not a popup, terminal, etc.
			if config.relative == "" then
				local wintitle = vim.fn.expand("%:t")
				if wintitle ~= "" then
					local location = aerial.get_location()

					for _, v in ipairs(location) do
						wintitle = wintitle .. " > " .. v.icon .. v.name
					end

					vim.wo.winbar = wintitle
				end
			end
		end,
	})
end

return M
