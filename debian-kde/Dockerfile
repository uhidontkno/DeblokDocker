FROM debian:latest
ENV USER=root
RUN --mount=target=/var/lib/apt/lists,type=cache,sharing=locked \
    --mount=target=/var/cache/apt,type=cache,sharing=locked \
    rm -f /etc/apt/apt.conf.d/docker-clean 
WORKDIR /app
COPY . .
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install --no-install-recommends -y \
    fontconfig python3 xfonts-base curl \
    python3-pip \
    tigervnc-tools tigervnc-standalone-server tigervnc-common \
    git \
    procps \
    python3-numpy python3-xdg \
    neofetch 
RUN apt-get install -y kde-plasma-desktop breeze firefox-esr kwin-x11 plasma-discover
RUN useradd --uid 1000 deblok
RUN mkdir -p /run/dbus
RUN mkdir /home/deblok
RUN chown deblok /home/deblok
RUN chmod 777 /home/deblok
RUN chmod 777 /app
RUN echo 'root:' | chpasswd -e
RUN echo 'deblok:' | chpasswd -e
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
