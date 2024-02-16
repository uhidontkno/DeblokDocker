FROM alpine:latest

ENV USER=root
WORKDIR /app

COPY . .

RUN apk update && \
    apk add --no-cache \
    python3 \
    py3-pip \
    xterm \
    x11vnc \
    nodejs \
    npm \
    git \
    procps \
    neofetch \
#   numpy

RUN mkdir -p /root/.vnc
RUN touch /root/.vnc/passwd
RUN echo 12345678 | vncpasswd -f > /root/.vnc/passwd
RUN chmod 600 /root/.vnc/passwd
RUN touch /root/.Xresources
COPY xstartup /root/.vnc/xstartup
RUN chmod +x /root/.vnc/xstartup

RUN git clone https://github.com/novnc/noVNC

CMD ["bash", "start.sh"]

EXPOSE 5901 6080
