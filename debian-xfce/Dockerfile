FROM debian:11-slim
ENV USER=deblok
WORKDIR /app
COPY . .
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    xterm \
    tightvncserver \
    nodejs \
    npm \
    git \
    procps \
    python3-numpy \
    neofetch \
    xfce4 \ 
    xfce4-goodies

RUN useradd --uid 1000 deblok
RUN mkdir /home/deblok
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
