sudo apt install linux-modules-extra-`uname -r`

sudo modprobe binder_linux devices="binder,hwbinder,vndbinder"

echo 'binder_linux options binder_linux devices="binder,hwbinder,vndbinder"' | sudo tee -a /etc/modules-load.d/redroid.conf



