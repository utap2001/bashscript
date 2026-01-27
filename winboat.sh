https://github.com/TibixDev/winboat?tab=readme-ov-file

#freerdp
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install com.freerdp.FreeRDP

#nodejs
sudo apt update
sudo apt install nodejs npm -y

sudo apt install golang-go -y

node -v
go version


Clone the repo (git clone https://github.com/TibixDev/WinBoat)
Install the dependencies (npm i)
Build the guest server (npm run build:gs)
Run the app (npm run dev)


