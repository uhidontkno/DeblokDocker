FROM ghcr.io/deblok-workshop/deblokdocker/debian-base:latest
ENV USER=root
WORKDIR /app
COPY ./ /app
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install chromium
CMD ["bash", "start.sh"]
EXPOSE 5901 6080
