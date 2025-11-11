# If running from tty1 start sway
set TTY1 (tty)
[ "$(tty)" = "/dev/tty1" ] && exec dbus-run-session sway
