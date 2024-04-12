#!/bin/bash
vncserver :1 -geometry 1280x720 -depth 24 &
xsetroot -bg black -fg white
/app/noVNC/utils/novnc_proxy --vnc localhost:5901
