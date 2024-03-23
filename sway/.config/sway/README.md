I build my sway config with `m4`, the GNU macro processor.

I use this command to build my config:
```sh
m4 m4/config.m4 > config
```

I can also preview the config with this command:
```sh
m4 m4/config.m4 | batcat
```
