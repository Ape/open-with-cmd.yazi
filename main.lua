return {
	entry = function(_, job)
		local block = job.args[1] and job.args[1] == "block"

		local value, event = ya.input({
			title = block and "Open with (block):" or "Open with:",
			pos = { "hovered", y = 1, w = 50 },
		})

		if event == 1 then
			local s = ya.target_family() == "windows" and " %*" or ' "$@"'
			ya.mgr_emit("shell", {
				value .. s,
				block = block,
				orphan = not block,
			})
		end
	end,
}
