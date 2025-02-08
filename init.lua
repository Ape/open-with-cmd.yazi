return {
  entry = function(_, job)
    local block = job.args[1] and job.args[1] == "block"

    local value, event = ya.input({
      title = block and "Open with (block):" or "Open with:",
      position = { "hovered", y = 1, w = 50 },
    })

    -- add alias list
    local alias_map = {
      ["na"] = "NVIM_APPNAME=AstroNvim nvim",
      ["emacs"] = "emacs -nw",
    }

    local command = alias_map[value] or value

    if event == 1 then
      local s = ya.target_family() == "windows" and " %*" or ' "$@"'
      ya.manager_emit("shell", {
        command .. s,
        block = block,
        orphan = true,
        confirm = true,
      })
    end
  end,
}
