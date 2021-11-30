debut=$(date +%s)

ORANGE='\033[0;33m'
GREEN='\033[0;32m'
WHITE='\033[0m'

if [ -d tdesktop ]; then
echo "Dossier source existe, mise à jour du code source.."
cd tdesktop
git pull --recurse-submodules && \
printf "${GREEN}Source mise à jour" || printf "${ORANGE}Source non mise à jour"

else

echo "Dossier source n'existe pas, téléchargement de la source.."
git clone --recursive https://github.com/telegramdesktop/tdesktop.git && \
printf "${GREEN}Source téléchargée" || printf "${ORANGE}Source non téléchargée"

fi

fin=$(date +%s)
duree=$(( $fin - $debut ))

printf " en $duree secondes ${WHITE}\n"

