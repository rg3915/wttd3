# Usage: source setup.sh

# Colors
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${green}>>> Cloning repo...${reset}"
git clone https://github.com/rg3915/wttd3.git

echo "${green}>>> Enter in wttd3 directory.${reset}"
cd wttd3

echo "${green}>>> Creating virtualenv...${reset}"
python -m venv .venv
echo "${green}>>> venv is created.${reset}"

sleep 2
echo "${green}>>> activate the venv.${reset}"
source .venv/bin/activate

echo "${green}>>> Short the prompt path.${reset}"
PS1="(`basename \"$VIRTUAL_ENV\"`)\e[1;34m:/\W\e[00m$ "
sleep 2

echo "${green}>>> Installing dependencies...${reset}"
pip install -r requirements/dev.txt

echo "${green}>>> Creating .env${reset}"
python contrib/env_gen.py
var=`python contrib/secret_gen.py`
printf '\nSECRET_KEY='$var >> .env

echo "${green}>>> Running tests...${reset}"
python manage.py test

echo "${green}>>> Done.${reset}"

