debut=$(date +%s)

docker build -t tdesktop:centos_env Telegram/build/docker/centos_env

fin=$(date +%s)
duree=$(( $fin - $debut ))
printf "Build effectué en $duree secondes \n"

