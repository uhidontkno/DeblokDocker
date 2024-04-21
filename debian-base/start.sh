#!/bin/bash
echo "while :
do
vncserver -kill :1
vncserver :1 -fg -passwd /root/.vnc/passwd
sleep 2
done
" | bash &
/app/noVNC/utils/novnc_proxy --vnc localhost:5901
