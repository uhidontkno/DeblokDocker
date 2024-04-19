#!/bin/bash
vncserver -kill :1
sudo rm -rf /run/dbus
sudo mkdir -p /run/dbus
sleep 1
vncserver :1 -passwd /root/.vnc/passwd &
sleep 1
/app/noVNC/utils/novnc_proxy --vnc localhost:5901
