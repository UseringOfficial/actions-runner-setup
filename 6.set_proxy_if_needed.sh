# prepare proxy starting script
# cp ./start_proxy.sh /home/ubuntu
# cp ./ssh-proxy.pem /home/ubuntu
# chmod 400 /home/ubuntu/ssh-proxy.pem
# chmod a+x /home/ubuntu/start_proxy.sh

# only for ssh login user
echo '
export all_proxy="http://127.0.0.1:7890"
export http_proxy="http://127.0.0.1:7890"
export https_proxy="http://127.0.0.1:7890"
' >> ~/.bashrc