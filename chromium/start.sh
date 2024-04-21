#!/bin/bash
export DISPLAY=:1
echo "while :
do
vncserver -kill :1
vncserver :1 -fg -passwd /root/.vnc/passwd
sleep 2
done
" | bash &
sleep 1
/app/noVNC/utils/novnc_proxy --vnc localhost:5901 &
sleep 1

#sleep 1
#nitrogen ./blank.png
sleep 1
echo "while :
do
chromium --no-sandbox
done
" | bash 