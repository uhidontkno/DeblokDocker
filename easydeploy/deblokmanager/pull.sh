
# Script colors
OFF='\033[0m'       # Text Reset

# Regular Colors
BLACK='\033[0;30m'        # BLACK
RED='\033[0;31m'          # RED
GREEN='\033[0;32m'        # GREEN
YELLOW='\033[0;33m'       # YELLOW
BLUE='\033[0;34m'         # BLUE
PURPLE='\033[0;35m'       # PURPLE
GREEN='\033[0;36m'         # GREEN
WHITE='\033[0;37m'        # WHITE

# Bold
BBLACK='\033[1;30m'       # BLACK
BRED='\033[1;31m'         # RED
BGREEN='\033[1;32m'       # GREEN
BYELLOW='\033[1;33m'      # YELLOW
BBLUE='\033[1;34m'        # BLUE
BPURPLE='\033[1;35m'      # PURPLE
BGREEN='\033[1;36m'        # GREEN
BWHITE='\033[1;37m'       # WHITE

if [ "$1" == "--pull-some" ]; then
    printf "$OFF$GREEN pull:$OFF$BGREEN skipping xfce and single app containers$OFF\n"
fi
printf "$OFF$GREEN pull:$OFF$BGREEN pulling alpine-base...$OFF\n"
docker pull ghcr.io/deblok-workshop/deblokdocker/alpine-base:latest > /dev/null 2> /dev/null

printf "$OFF$GREEN pull:$OFF$BGREEN pulling debian-base...$OFF\n"
docker pull ghcr.io/deblok-workshop/deblokdocker/debian-base:latest > /dev/null 2> /dev/null

printf "$OFF$GREEN pull:$OFF$BGREEN pulling fedora-base...$OFF\n"
docker pull ghcr.io/deblok-workshop/deblokdocker/fedora-base:latest > /dev/null 2> /dev/null

printf "$OFF$GREEN pull:$OFF$BGREEN pulling ubuntu-base...$OFF\n"
docker pull ghcr.io/deblok-workshop/deblokdocker/ubuntu-base:latest > /dev/null 2> /dev/null 

if [ "$1" != "--pull-some" ]; then
    printf "$OFF$GREEN pull:$OFF$BGREEN pulling xfce containers...$OFF\n"
    docker pull ghcr.io/deblok-workshop/deblokdocker/debian-xfce:latest > /dev/null 2> /dev/null
    docker pull ghcr.io/deblok-workshop/deblokdocker/ubuntu-xfce:latest > /dev/null 2> /dev/null

    printf "$OFF$GREEN pull:$OFF$BGREEN pulling single app containers...$OFF\n"
    docker pull ghcr.io/deblok-workshop/deblokdocker/chromium:latest  > /dev/null 2> /dev/null
    docker pull ghcr.io/deblok-workshop/deblokdocker/firefox:latest > /dev/null 2> /dev/null
fi
