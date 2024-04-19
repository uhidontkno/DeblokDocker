FROM ubuntu:latest
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
    xfce4-terminal \
    tigervnc-tools tigervnc-standalone-server tigervnc-common \
    git \
    procps \
    python3-numpy python3-xdg \
    neofetch 
RUN apt install -y x11-xserver-utils openbox obconf nitrogen xvfb
RUN echo "iVBORw0KGgoAAAANSUhEUgAAAAQAAAAECAYAAACp8Z5+AAAABHNCSVQICAgIfAhkiAAAABVJREFUCJljdHBw+M+ABJgY0ABhAQBylAHH4MiYyQAAAABJRU5ErkJggg==" | base64 -d > blank.png
RUN fc-cache -f -v
RUN mkdir -p /root/.vnc
RUN touch /root/.vnc/passwd
RUN echo 12345678 | vncpasswd -f > /root/.vnc/passwd
RUN touch /root/.Xresources
RUN cp ./xstartup /root/.vnc/xstartup
RUN chmod +x /root/.vnc/xstartup
RUN git clone https://github.com/novnc/noVNC
CMD ["bash", "start.sh"]
EXPOSE 5901 6080
