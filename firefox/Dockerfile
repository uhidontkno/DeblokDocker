FROM ghcr.io/deblok-workshop/deblokdocker/ubuntu-base:latest
ENV USER=root
WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install firefox menu
COPY ./ /app
RUN cp ./xstartup /root/.vnc/xstartup
CMD ["bash", "start.sh"]
EXPOSE 5901 6080
