# ubuntu 14.04

sudo apt-get update
sudo apt-get install git

wget http://security.ubuntu.com/ubuntu/pool/universe/libe/liberasurecode/liberasurecode-dev_1.1.0-2~ubuntu14.04.1_amd64.deb
wget http://security.ubuntu.com/ubuntu/pool/universe/libe/liberasurecode/liberasurecode1_1.1.0-2~ubuntu14.04.1_amd64.deb
sudo dpkg -i liberasurecode1_1.1.0-2~ubuntu14.04.1_amd64.deb
sudo dpkg -i liberasurecode-dev_1.1.0-2~ubuntu14.04.1_amd64.deb


git clone https://github.com/openstack-dev/devstack.git
cd devstack
wget https://raw.githubusercontent.com/Haomeng/ironic-clone-dev/master/local.conf
./stack.sh
sudo -u libvirt-qemu touch $HOME/ironic-bm-logs/test.log

