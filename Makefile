install:
DWM=6.8
ST=0.9.3
DMENU=5.4

cd src
wget https://dl.suckless.org/dwm/dwm-$DWM.tar.gz
tar -xf dwm-$DWM.tar.gz --transform s/dwm-$DWM/dwm/
rm dwm-$DWM.tar.gz

wget https://dl.suckless.org/st/st-$ST.tar.gz
tar -xf st-$ST.tar.gz --transform s/st-$ST/st/
rm st-$ST.tar.gz

wget https://dl.suckless.org/tools/dmenu-$DMENU.tar.gz
tar -xf dmenu-$DMENU.tar.gz --transform s/dmenu-$DMENU/dmenu/
rm dmenu-$DMENU.tar.gz

cd dwm
make && sudo make install

cd ..

cd dmenu
make && sudo make install

cd ..

cd st
make && sudo make install

cd ../..
cp -r * ~/
reconfig:
