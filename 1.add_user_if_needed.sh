echo '======Add user if needed======'
useradd ubuntu
mkdir /home/ubuntu
chown ubuntu /home/ubuntu
chmod 750 /home/ubuntu
passwd ubuntu
id ubuntu
chsh -s /bin/bash ubuntu

echo '======Switch to user ubuntu======'
su - ubuntu