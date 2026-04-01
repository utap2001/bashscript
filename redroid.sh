sudo apt install linux-modules-extra-`uname -r`

sudo modprobe binder_linux devices="binder,hwbinder,vndbinder"

echo 'binder_linux' | sudo tee -a /etc/modules-load.d/redroid.conf
echo 'options binder_linux devices="binder,hwbinder,vndbinder"' | sudo tee -a /etc/modprobe.d/redroid.conf


/etc/modules.load.d/binder.conf
binder_linux

/etc/modprobe.d/binder.conf
options binder_linux devices=binder,hwbinder,vndbinder

lsmod | grep binder



