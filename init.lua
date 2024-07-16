return {
	entry = function()
		local value, event = ya.input({
			title = "Open with:",
			position = { "hovered", y = 1, w = 50 },
		})

		if event == 1 then
			local s = ya.target_family() == "windows" and ' %*' or ' "$@"'
			ya.manager_emit("shell", {
				value .. s,
				orphan = true,
				confirm = true,
			})
		end
	end,
}
