#!/bin/bash
# Start the VNC server
x11vnc :1 -forever -usepw &
/app/noVNC/utils/novnc_proxy --vnc localhost:5901
