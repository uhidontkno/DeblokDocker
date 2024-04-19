#!/bin/bash
echo "while :
do
vncserver :1 -passwd /root/.vnc/passwd
sleep 5
done
" | bash &
/app/noVNC/utils/novnc_proxy --vnc localhost:5901
