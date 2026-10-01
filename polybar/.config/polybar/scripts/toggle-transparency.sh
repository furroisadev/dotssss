```bash
#!/bin/bash

WINDOW=$(xdotool getactivewindow)

# Get current opacity
CURRENT=$(xprop -id "$WINDOW" _NET_WM_WINDOW_OPACITY | awk '{print $NF}')

# 100% opacity = 0xffffffff
if [ "$CURRENT" = "4294967295" ] || [ -z "$CURRENT" ]; then
    # Set to 85% opacity
    xprop -id "$WINDOW" -f _NET_WM_WINDOW_OPACITY 32c \
        -set _NET_WM_WINDOW_OPACITY 3650722201
else
    # Set to 100% opacity
    xprop -id "$WINDOW" -f _NET_WM_WINDOW_OPACITY 32c \
        -set _NET_WM_WINDOW_OPACITY 4294967295
fi
```
