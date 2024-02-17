nohup echo "vncserver -kill :1
sudo pkill startxfce4
sudo rm -rf /run/dbus
sudo mkdir -p /run/dbus
sleep 1
vncserver :1 -geometry 1280x720 -depth 24 &" | bash