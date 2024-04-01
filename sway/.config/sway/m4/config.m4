define(USER, collin)
define(cfg_dir, /home/USER/.config/sway)
define(m4_dir, cfg_dir/m4)
define(user_bin, /home/USER/.local/bin)
define(foot_dir, /home/USER/.config/foot)

define(mod, Mod4)
define(terminal, foot --config="foot_dir/root.ini")
define(dbx_term, foot --config="foot_dir/term.ini")
define(menu, user_bin/app_menu)
define(clip_hist, user_bin/clipboard_history.sh)
define(clip_edit, user_bin/clipboard_edit.sh)
define(wallpaper, /home/USER/Pictures/wallpapers/Mojave.jpg)
define(cursor, "Vimix-white-cursors")

include(m4_dir/dsl.m4)
include(m4_dir/keys.m4)
include(m4_dir/bar.m4)

dnl == Theming
output * bg wallpaper fill
seat seat0 xcursor_theme cursor

dnl == Input Devices ==
input "type:touchpad" {
    dwt disabled
    tap enabled
    natural_scroll disabled
    middle_emulation disabled
}
input "type:keyboard" {
    xkb_options caps:super
}

dnl == Borders ==
default_border pixel 2
smart_gaps on
smart_borders on
gaps inner 10
client.focused #61AFEF #61AFEF #61AFEF 
client.unfocused #282C34 #282C34 #282C34

include(m4_dir/systemd-user.conf)
