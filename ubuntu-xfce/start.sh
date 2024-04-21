#!/bin/bash
vncserver -kill :1
sudo rm -rf /run/dbus
sudo mkdir -p /run/dbus
sleep 1
echo "while :
do
vncserver -kill :1
vncserver :1 -fg -passwd /home/deblok/.vnc/passwd
sleep 5
done
" | bash &
sleep 1
/app/noVNC/utils/novnc_proxy --vnc localhost:5901
