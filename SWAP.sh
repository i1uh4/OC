echo "Input the swap file size in gigabytes without any letters "
read swapsize

sudo swapoff -a /swapfile
sudo rm -f /swapfile
sudo fallocate -l ${swapsize}G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

