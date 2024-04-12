#!/bin/bash
xsetroot -bg black -fg white

# Start the VNC server
vncserver :1 -geometry 1280x720 -depth 24 -br &
/app/noVNC/utils/novnc_proxy --vnc localhost:5901
