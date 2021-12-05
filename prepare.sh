start=$(date +%s)

ORANGE='\033[0;33m'
GREEN='\033[0;32m'
WHITE='\033[0m'

if [ -d tdesktop ]; then
echo "Source folder already exists, updating the source.."
cd tdesktop
git pull --recurse-submodules && \
printf "${GREEN}Source updated!" || printf "${ORANGE}Source update failed."

else

echo "Source folder doesn't exist, downloading it...."
git clone --recursive https://github.com/telegramdesktop/tdesktop.git && \
printf "${GREEN}Source downloaded!" || printf "${ORANGE}Source download failed."

fi

end=$(date +%s)
duration=$(( $end - $start ))

printf " in $duration seconds ${WHITE}\n"

