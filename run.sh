if [ $# -eq 0 ]
  then
    echo "Please pass the api_id and api_hash as argument"
    exit
fi


start=$(date +%s)

docker run -v $PWD/tdesktop:/usr/src/tdesktop tdesktop:centos_env /usr/src/tdesktop/Telegram/build/docker/centos_env/build.sh \
-D TDESKTOP_API_ID=$1 \
-D TDESKTOP_API_HASH=$2 \
-D DESKTOP_APP_USE_PACKAGED=OFF \
-D DESKTOP_APP_DISABLE_CRASH_REPORTS=OFF

end=$(date +%s)
duration=$(( $end - $start ))
printf "Docker run done in $duration seconds \n"

pkill Telegram
tdesktop/out/Release/Telegram &

