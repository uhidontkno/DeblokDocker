#!/bin/bash
vncserver :1 -passwd /root/.vnc/passwd &
sleep 1
/app/noVNC/utils/novnc_proxy --vnc localhost:5901 &
sleep 3
echo "openbox-session &" | bash
#sleep 1
#nitrogen ./blank.png
sleep 1
echo "while :
do
firefox --no-sandbox
done
" | bash 