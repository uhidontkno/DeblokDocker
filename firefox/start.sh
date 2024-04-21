#!/bin/bash
export DISPLAY=:1
echo "while :
do
vncserver :1 -fg -passwd /root/.vnc/passwd
sleep 5
done
" | bash &
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