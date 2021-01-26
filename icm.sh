#!/bin/bash
export icmContainer=containers.intersystems.com/intersystems/icm:2020.4.0.524.0
#source ../env-config.sh
clear

# extract the basename of the full pwd path
DIR2MOUNT=$(basename $(pwd))

docker run --name icm-1 -it -v $PWD:/$DIR2MOUNT --cap-add SYS_TIME --workdir /$DIR2MOUNT $icmContainer 

printf "\nExited icm-aws2 container\n"
printf "\nRemoving icm-aws2 container...\nContainer removed:  "
docker rm icm-1

