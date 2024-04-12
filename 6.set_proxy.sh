# only for ssh login user
echo "
export all_proxy="http://127.0.0.1:7890"
export http_proxy="http://127.0.0.1:7890"
export https_proxy="http://127.0.0.1:7890"
alias noproxy='unset all_proxy https_proxy http_proxy'
" >> ~/.bashrc
