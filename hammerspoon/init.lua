hyper = {"cmd", "alt", "ctrl"}

hs.loadSpoon("UnsplashZ")
hs.loadSpoon("SpoonInstall")

spoon.SpoonInstall:andUse("WindowGrid", {
    config = {
        gridGeometries = {{"8x4"}}
    },
    hotkeys = {
        show_grid = {hyper, "space"}
    },
    start = true
})

local screens = hs.screen.allScreens()
local screenwatcher = hs.screen.watcher.new(function()
    screens = hs.screen.allScreens()
    hs.reload()
end)
