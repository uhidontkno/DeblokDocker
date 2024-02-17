FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
#ENV DBUS_SESSION_BUS_ADDRESS=unix:path=/dev/null

ENV USER=deblok
ENV DISPLAY=:1
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y passwd sudo dbus dbus-x11 libxrandr2 libxext-dev libxrender-dev libxtst-dev python3 python3-pip xterm tightvncserver git procps python3-numpy neofetch xfce4 xfce4-goodies firefox-esr chromium gimp remmina remmina-plugin-vnc flatpak nano
RUN mkdir -p /run/dbus
RUN useradd --uid 1000 deblok
RUN mkdir /home/deblok
RUN chown deblok /home/deblok
RUN chmod 777 /home/deblok
RUN chmod 777 /app

# Remove passwords
RUN echo 'root:' | chpasswd -e
RUN echo 'deblok:' | chpasswd -e

# Add to sudo group
RUN usermod -aG sudo deblok

USER deblok

RUN mkdir -p /home/deblok/.vnc
RUN touch /home/deblok/.vnc/passwd
RUN echo 12345678 | vncpasswd -f > /home/deblok/.vnc/passwd
RUN chmod 600 /home/deblok/.vnc/passwd
RUN touch /home/deblok/.Xresources
RUN cp ./xstartup /home/deblok/.vnc/xstartup
RUN chmod +x /home/deblok/.vnc/xstartup

RUN git clone https://github.com/novnc/noVNC
CMD ["bash", "start.sh"]
EXPOSE 5901 6080
