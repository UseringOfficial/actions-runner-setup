# only for ssh login user
echo "
export all_proxy="http://127.0.0.1:7890"
export http_proxy="http://127.0.0.1:7890"
export https_proxy="http://127.0.0.1:7890"
alias noproxy='unset all_proxy https_proxy http_proxy'
" >> ~/.bashrc

# download clash config
# https://ikuuu.one/user/tutorial?os=linux&client=clash



# auto start proxy
sudo cp ./proxy/clash.service /etc/systemd/system/clash.service
sudo systemctl daemon-reload
sudo systemctl enable clash
sudo systemctl start clash
sudo systemctl status clash

# enable https proxy for git
# https://adangel.org/2020/10/15/github-behind-proxy/