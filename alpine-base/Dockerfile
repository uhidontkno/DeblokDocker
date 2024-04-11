FROM alpine:latest
RUN --mount=target=/var/lib/apt/lists,type=cache,sharing=locked \
    --mount=target=/var/cache/apt,type=cache,sharing=locked \
    rm -f /etc/apt/apt.conf.d/docker-clean 
ENV USER=root
WORKDIR /app

COPY . .

RUN apk update && \
    apk add --no-cache \
    xorg-server xf86-input-libinput xinit eudev xvfb \
    python3 \
    py3-pip \
    xfce4-terminal \
    x11vnc \
    git \
    procps \
    neofetch kwin

RUN mkdir -p /root/.vnc
RUN touch /root/.vnc/passwd
RUN x11vnc -storepasswd 12345678 /root/.vnc/passwd
RUN chmod 600 /root/.vnc/passwd
RUN touch /root/.Xresources
COPY xstartup /root/.vnc/xstartup
RUN chmod +x /root/.vnc/xstartup

RUN git clone https://github.com/novnc/noVNC

CMD ["bash", "start.sh"]

EXPOSE 5901 6080
