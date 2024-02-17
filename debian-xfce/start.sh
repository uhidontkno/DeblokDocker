#!/bin/bash
vncserver -kill :1
rm -rf /run/dbus
mkdir -p /run/dbus
resolution="${2:-960x720}"
vncserver :1 -geometry "$resolution" -depth 24 &
/app/noVNC/utils/novnc_proxy --vnc localhost:5901
