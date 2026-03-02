#!/usr/bin/env bash

# Kill existing Polybar
killall -q polybar

# Wait for processes to end
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar bar &
