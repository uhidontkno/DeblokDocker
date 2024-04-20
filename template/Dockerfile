FROM ghcr.io/deblok-workshop/deblokdocker/debian-base:latest
ENV USER=root
WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive

#####################################
## Your app install commands here ##
####################################

COPY ./ /app
RUN cp ./xstartup /root/.vnc/xstartup
CMD ["bash", "start.sh"]
EXPOSE 5901 6080
