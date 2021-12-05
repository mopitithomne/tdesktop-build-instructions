start=$(date +%s)

docker build -t tdesktop:centos_env tdesktop/Telegram/build/docker/centos_env

end=$(date +%s)
duration=$(( $end - $start ))
printf "Build done in $duration seconds \n"

