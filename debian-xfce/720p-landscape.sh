vncserver -kill :1
sudo pkill startxfce4
vncserver :1 -geometry 1280x720 -depth 24 &