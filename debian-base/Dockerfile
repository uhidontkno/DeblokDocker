FROM debian:11-slim
ENV USER=root
WORKDIR /app
COPY . .
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    xterm \
    tightvncserver \
    git \
    procps \
    python3-numpy \
    neofetch kwin-x11
RUN mkdir -p /root/.vnc
RUN touch /root/.vnc/passwd
RUN echo 12345678 | vncpasswd -f > /root/.vnc/passwd
RUN chmod 600 /root/.vnc/passwd
RUN touch /root/.Xresources
RUN cp ./xstartup /root/.vnc/xstartup
RUN chmod +x /root/.vnc/xstartup
RUN git clone https://github.com/novnc/noVNC
CMD ["bash", "start.sh"]
EXPOSE 5901 6080
