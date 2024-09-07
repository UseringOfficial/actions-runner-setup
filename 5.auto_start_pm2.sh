
pm2 start ./runners/pm2.json
pm2 save
pm2 startup systemd
sudo env PATH=$PATH:/home/ubuntu/.nvm/versions/node/v20.15.1/bin /home/ubuntu/.nvm/versions/node/v20.15.1/lib/node_modules/pm2/bin/pm2 startup systemd -u ubuntu --hp /home/ubuntu