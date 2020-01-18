


#ALTERNATIVE docker run -it ubuntu



: 1578830337:0;mkdir -p downloads/ububase
: 1578830346:0;cd  downloads/ububase
: 1578830392:0;wget http://cdimage.ubuntu.com/ubuntu-base/releases/bionic/release/ubuntu-base-18.04.3-base-i386.tar.gz
: 1578830426:0;sha256sum ubuntu-base-18.04.3-base-i386.tar.gz

ISHOULD_FIX  cd ~/Dropbox/dr-vibo-sf/ubuntu-base/ ; gpg --verify SHA256SUMS.gpg SHA256SUMS
ISHOULD_FIX tar xvf ubuntu-base-18.04.3-base-i386.tar.gz



 ##https://packages.ubuntu.com/bionic/i386/grub-rescue-pc/filelist
#ALTERNATIVE  663  11  sudo apt install grub-rescue-pc



sudo mount -v --rbind /dev dev
sudo mount -v --rbind /proc proc
sudo mount -v --rbind /sys sys
sudo mount -v --rbind /run run
#?is it a good idea?

sudo mount -v -o bind /etc/resolv.conf etc/resolv.conf
sudo mount -v -o bind /etc/hostname etc/hostname
sudo mount -v -o bind /etc/hosts etc/hosts
#mount



ISHOULD_TEST sudo -i chroot .
#sudo -i chroot /mnt/prase/



  652  11  sudo fdisk /dev/sdb

###  668  11  sudo mke2fs /dev/sdb1
  671  11  sudo mke2fs -t ext4  /dev/sdb1


sudo mkdir /mnt/prase
sudo mount /dev/sdb1 /mnt/prase
cd /mnt/prase/



ISHOULD_FIX cp -riv /boot boot

: 1578823845:0;sudo mkdir   /mnt/prase/boot
: 1578823866:0;sudo grub-install --verbose          --boot-directory=/mnt/prase/boot /dev/sdb

sudo update-grub

