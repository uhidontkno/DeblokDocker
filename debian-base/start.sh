#!/bin/bash
Xvfb :1 +extension RANDR -screen 1280x720x16 &
export DISPLAY=:1
bash ./xstartup &
sleep 1
x11vnc -display :1 -nopw &
/app/noVNC/utils/novnc_proxy --vnc localhost:5900
