return {
	entry = function()
		local value, event = ya.input({
			title = "Open with:",
			position = { "hovered", y = 1, w = 50 },
		})

		if event == 1 then
			ya.manager_emit("shell", {
				value .. ' "$@"',
				orphan = true,
				confirm = true,
			})
		end
	end,
}
