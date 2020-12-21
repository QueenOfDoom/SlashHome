echo "Do you want to setup your Debian Installation?"
read confirm

# System Update
sudo apt update 
sudo apt upgrade

echo "Install Packages"
read confirm
# Installs Packages [utils, programming, sys, media]
sudo apt install \
	curl vim \
	openjdk-11-jdk nodejs npm git maven gradle pipenv swi-prolog \
	man man-db \
	cmus


echo "Install Plug for Vim"
read confirm
# Vim Plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Install TypeScript Compiler"
read confirm
# Type Script Setup
npm install -g typescript

echo "Generate Keys. Warning: Mail not set!"
read confirm
# Key Generation
ssh-keygen -t ed25519 -C "[mail]"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
