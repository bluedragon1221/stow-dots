config = config
c = c

config.load_autoconfig(False)

def padding(top, left, right, bottom):
    return {
        "top": top,
        "left": left,
        "right": right,
        "bottom": bottom
    }

c.fonts.default_family = "Iosevka NerdFont"
c.fonts.default_size = "11pt"
c.fonts.hints = "12pt Inter"

c.completion.height = "25%"
c.completion.use_best_match = True
c.completion.shrink = True
c.completion.quick = True

c.scrolling.bar = "when-searching"

c.statusbar.padding = padding(6, 0, 0, 6)
c.statusbar.widgets = ["keypress", "search_match", "url"]

c.tabs.indicator.width = 0 # disable tab indicator
c.tabs.last_close = "close"
c.tabs.padding = padding(6, 5, 5, 6)
c.tabs.position = "left"
c.tabs.title.format = "{current_title}"
c.tabs.width = "10%"

config.source("onedark.py")

