# We're using Bun Debian container so we don't have to manually install Bun.
FROM oven/bun:1.1.3-debian
USER root
RUN mkdir /app
WORKDIR /app
COPY ./ /app


# Install packages
RUN apt-get update && \
    apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common \
        nginx \
        git cmake build-essential g++
# Install NodeJS PPA repo
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash 
# Install NodeJS
RUN apt update && apt install -y nodejs

# Clone the repo
RUN git clone https://github.com/Deblok-Workshop/DeblokManager

# Install Docker for DinD setup
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
RUN apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io

# Setup NGINX
RUN cp DeblokManager/nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 3175 8100 8000

CMD ["bash","start.sh"]
