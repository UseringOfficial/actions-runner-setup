echo '======Install Packages======'
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg python2-minimal make
sudo ln -s /usr/bin/python2.7 /usr/bin/python
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" |
  sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world

sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock

echo '======Install NVM ======'
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

echo 'export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> ~/.bash_profile

. ~/.bash_profile


echo '======Install Node & Global Package ======'
nvm install 18.15
sudo npm install -g npm@10.2.0
sudo npm install -g pnpm@8.1.1 prisma@4.13.0

echo '======Install pm2 ======'
sudo npm install pm2

echo '======Setup pnpm ======'
pnpm setup
echo 'export PNPM_HOME="/home/ubuntu/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac' >> ~/.bash_profile