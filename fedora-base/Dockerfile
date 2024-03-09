FROM fedora:latest

ENV USER=root
WORKDIR /app

COPY . .

RUN dnf -y update && dnf install -y \
    python3 \
    python3-pip \
    xterm \
    tigervnc-server \
    git \
    procps-ng \
    numpy \
    neofetch kwin-x11

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
