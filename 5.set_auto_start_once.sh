echo '======Clean Docker Every 24h======'
(crontab -l ; echo '0 2 * * * docker system prune -af --filter "until=48h"') | crontab

pm2 start ./runners/pm2.json
pm2 save
pm2 startup systemd
sudo env PATH=$PATH:/home/ubuntu/.nvm/versions/node/v20.15.1/bin /home/ubuntu/.nvm/versions/node/v20.15.1/lib/node_modules/pm2/bin/pm2 startup systemd -u ubuntu --hp /home/ubuntu