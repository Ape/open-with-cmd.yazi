return {
	entry = function(_, args)
		local block = args[1] and args[1] == "block"

		local value, event = ya.input({
			title = block and "Open with (block):" or "Open with:",
			position = { "hovered", y = 1, w = 50 },
		})

		if event == 1 then
			local s = ya.target_family() == "windows" and " %*" or ' "$@"'
			ya.manager_emit("shell", {
				value .. s,
				block = block,
				orphan = true,
				confirm = true,
			})
		end
	end,
}
