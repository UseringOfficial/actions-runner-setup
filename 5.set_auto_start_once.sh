echo '======Clean Docker Every 24h======'
echo '======Start Proxy While System Reboot======'
(crontab -l ; echo '0 2 * * * docker system prune -af --filter "until=1h"'; echo '@reboot /home/ubuntu/start_proxy.sh') | crontab

pm2 start ./runners/pm2.json
pm2 save
pm2 startup systemd
# exce the output of the above command, like below
# sudo env PATH=$PATH:/home/ubuntu/.nvm/versions/node/v18.15.0/bin /home/ubuntu/.nvm/versions/node/v18.15.0/lib/node_modules/pm2/bin/pm2 startup systemd -u ubuntu --hp /home/ubuntu