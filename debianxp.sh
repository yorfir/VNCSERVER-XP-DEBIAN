####debian 6 xp install vnc without xfce
apt-get update
apt-get install vnc4server qemu -y
vncserver
chmod +x ~/.vnc/xstartup
echo 'qemu  -hda winxp.img -m 512M -net nic,model=virtio -net user -redir tcp:3389::3389'>>/root/.vnc/xstartup
cp vncserver /etc/init.d/
chmod +x /etc/init.d/vncserver
update-rc.d vncserver defaults
wget -O winxp.img http://down.senra.me/laozuo-xp-10G.img
reboot
