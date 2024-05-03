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
echo "" > docker.log # Clear old log if it exists
dockerd > docker.log & 
sleep 3
printf "$OFF$BLUE info:$OFF$BBLUE Pulling containers...$OFF\n"
printf "$OFF$BLUE info:$OFF$BBLUE This will only take long on first start or if there is any updates.$OFF\n"
bash pull.sh
sleep 1
printf "$OFF$BLUE info:$OFF$BBLUE Starting NGINX...$OFF\n"
service start nginx
sleep 1
printf "$OFF$BLUE info:$OFF$BBLUE Starting DeblokManager...$OFF\n"
cd DeblokManager
bun run index.ts