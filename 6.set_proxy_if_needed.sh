# prepare proxy starting script
cp ./start_proxy.sh /home/ubuntu
cp ./ssh-proxy.pem /home/ubuntu
chmod 400 /home/ubuntu/ssh-proxy.pem
chmod a+x /home/ubuntu/start_proxy.sh

# only for ssh login user
echo '
export all_proxy=socks5://127.0.0.1:8080
export http_proxy=socks5://127.0.0.1:8080
export https_proxy=socks5://127.0.0.1:8080
' >> ~/.bash_profile