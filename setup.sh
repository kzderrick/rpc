sudo apt-get update
yes Y | sudo apt-get install gcc
sudo apt-get install make
mkdir ~/glibc225
cd ~/glibc225
wget http://ftp.gnu.org/gnu/glibc/glibc-2.25.tar.gz && tar zxvf glibc-2.25.tar.gz
cd glibc-2.25 
mkdir build
cd build
../configure --prefix=/opt/glibc-2.25
export LD_LIBRARY_PATH=/opt/glibc-2.25/lib
mkfs.ext4 /dev/nvme0n1
sudo mkdir /hdd
echo "/dev/nvme0n1    /hdd    ext4    defaults    0    0" >> /etc/fstab
sudo mount /hdd
cd /hdd
mkdir Solana
mkdir Solana/Ledger
mkdir Solana/Ledger/logs && touch Solana/Ledger/logs
cd /hdd/Solana/Ledger
sysctl -w vm.max_map_count=262144444
echo "vm.max_map_count=262144444" >> /etc/sysctl.conf
sh -c "$(curl -sSfL https://release.solana.com/v1.9.28/install)"
export PATH="/root/.local/share/solana/install/active_release/bin:$PATH"
echo | solana-keygen new -o ~/validator-keypair.json > pubkey.txt
cp pubkey.txt backupkey.txt
