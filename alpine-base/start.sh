#!/bin/bash
# Start the VNC server
Xvfb :1 -screen 0 640x480x24 &

sleep 1
x11vnc -display :1 -forever -usepw &
export DISPLAY=:1
bash ./xstartup
/app/noVNC/utils/novnc_proxy --vnc localhost:5900
