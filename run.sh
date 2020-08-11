read name;

ssh-keygen;
adduser $name;
mkdir -p /home/$name/.ssh;
touch /home/$name/.ssh/authorized_keys;
cp ~/.ssh/id_rsa.pub /home/$name/.ssh/authorized_keys;
useradd -d /home/$name $name;
chown -R $name:$name /home/$name/;
chmod 700 /home/$name/.ssh;
chmod 600 /home/$name/.ssh/authorized_keys;
chmod 750 /homw/$name;
usermod -aG sudo $name;
sudo apt-get update;

ssh-copy-id -i ~/.ssh/id_rsa.pub $name@159.65.0.138;
