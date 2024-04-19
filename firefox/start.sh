#!/bin/bash
vncserver :1 -passwd /root/.vnc/passwd &
sleep 1
/app/noVNC/utils/novnc_proxy --vnc localhost:5901
