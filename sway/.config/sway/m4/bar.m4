dnl == Status Bar ==
esyscmd(m4 m4_dir/status.m4 > cfg_dir/status.sh)
esyscmd(chmod +x cfg_dir/status.sh)
bar {
    position bottom
    status_command while m4_dir/../status.sh; do sleep 1; done
    mode hide
    modifier mod
    workspace_buttons yes
    height 31
    font "Iosevka Nerd Font" 12
    colors {
        statusline #abb2bf
        background #353B45
    }
}
