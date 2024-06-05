return {
    "rcarriga/nvim-notify",
    config = function ()
        local notify = require("notify")

        notify.setup({
            fps = 60,
            icons = {
                ERROR = "",
                WARN = "",
                INFO = "",
                DEBUG = "",
                TRACE = "✎",
            },
            stages = "slide",

        })

        vim.notify = notify
    end
}
