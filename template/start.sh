#!/bin/bash
export DISPLAY=:1
echo "while :
do
vncserver :1 -passwd /root/.vnc/passwd # vnc server
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
# Uncomment the below to relaunch on close
#echo "while :
#do
## Your app commands here
#done
#" | bash 