for_window [app_id="float_foot"] floating enable

dnl == Clipboard ==
exec wl-paste --watch cliphist store
bind_cmd(mod+v, clip_hist)
bind_cmd(mod+Shift+v, clip_edit)

dnl == Applications ==
bind_cmd(mod+x, term)
bind_cmd(mod+Space, menu)
bind_cmd(mod+s, grim ~/Pictures/screenshots/$(date +'%s_grim.png'))

dnl == Manage Windows ==
bind(mod+q, kill)
bind(mod+f, fullscreen)
floating_modifier mod normal

dnl == Switch Workspaces ==
foreach(num, (1, 2, 3, 4, 5, 6, 7, 8, 9), `
	bind(mod+num, workspace number num)
	bind(mod+Shift+num, move container to workspace number num)
')

dnl == Manage Sway ==
bind(mod+r, reload)
bind_cmd(mod+Shift+q, swaymsg exit)

dnl == Volume ==
bind_cmd(XF86AudioLowerVolume, "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-")
bind_cmd(XF86AudioRaiseVolume, "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+")
bind_cmd(XF86MonBrightnessDown, "brighnessctl set 5%-")
bind_cmd(XF86MonBrightnessUp, "brighnessctl set 5%+")
