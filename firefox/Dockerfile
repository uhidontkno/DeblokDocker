FROM ghcr.io/deblok-workshop/deblokdocker/debian-base:latest
ENV USER=root
WORKDIR /app
COPY . .
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install firefox-esr
CMD ["bash", "start.sh"]
EXPOSE 5901 6080
