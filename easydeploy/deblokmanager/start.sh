# Script colors
OFF='\033[0m'       # Text Reset

# Regular Colors
BLACK='\033[0;30m'        # BLACK
RED='\033[0;31m'          # RED
GREEN='\033[0;32m'        # GREEN
YELLOW='\033[0;33m'       # YELLOW
BLUE='\033[0;34m'         # BLUE
PURPLE='\033[0;35m'       # PURPLE
CYAN='\033[0;36m'         # CYAN
WHITE='\033[0;37m'        # WHITE

# Bold
BBLACK='\033[1;30m'       # BLACK
BRED='\033[1;31m'         # RED
BGREEN='\033[1;32m'       # GREEN
BYELLOW='\033[1;33m'      # YELLOW
BBLUE='\033[1;34m'        # BLUE
BPURPLE='\033[1;35m'      # PURPLE
BCYAN='\033[1;36m'        # CYAN
BWHITE='\033[1;37m'       # WHITE

printf "$OFF$BLUE info:$OFF$BBLUE Starting dockerd...$OFF\n"
echo '{ "hosts": ["tcp://0.0.0.0:2375","unix:///var/run/docker.sock"] }' > /etc/docker/daemon.json

echo "" > docker.log 
rm /var/run/docker.pid > docker.log 2> docker.log
dockerd --tls=false &
sleep 8
if [ "$1" == "--debug" ]; then
    cat docker.log
fi
printf "$OFF$BLUE info:$OFF$BBLUE Pulling containers...$OFF\n"
printf "$OFF$BLUE info:$OFF$BBLUE This will only take long on first start or if there is any updates.$OFF\n"
bash pull.sh --pull-some
if [ "$1" == "--debug" ]; then
    cat dockerpulls.log
fi
sleep 1
printf "$OFF$BLUE info:$OFF$BBLUE Starting NGINX...$OFF\n"
echo "nginx > nginx.log 2> nginx.log" | bash &
sleep 1
printf "$OFF$BLUE info:$OFF$BBLUE Starting DeblokManager...$OFF\n"
cd DeblokManager
/root/.bun/bin/bun i
/root/.bun/bin/bun rm cpu-features
/root/.bun/bin/bun run index.ts 