#!/bin/bash
vncserver -kill :1
sudo rm -rf /run/dbus
sudo mkdir -p /run/dbus
sleep 1
resolution="${1:-1280x720}"
vncserver :1 -geometry "$resolution" -depth 24 &
/app/noVNC/utils/novnc_proxy --vnc localhost:5901
