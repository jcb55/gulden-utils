# gulden-utils
Utilities and files related to the gulden cryptocurrency

## gulden-1.6.4.10.deb  

AMD64 (x86_64) Debian stretch version of Gulden including the qt gui wallet

gulden-1.6.4.10.deb md5sum 2bfa58832b660b5f4188391fcfe7601d 

installed in /opt/gulden/gulden/

prerequisites :
```
apt-get install libboost-dev libboost-filesystem-dev libboost-system-dev program-options1.62-dev libboost-thread1.62-dev libboost-thread1.62.0  libboost-filesystem1.62.0libgcc1 libczmq4 libevent-2 libxau6 libxext6 libxcb1 libqrencode3 xcb-proto  libprotobuf miniupnpc libevent-pthreads-2.0-5 qt5-default  dbus fontconfig-2.11.1 libfreetype6 libxrender1 libqrencode3 libprotobuf libx11-6 
```

## gulden-1.6.4.10-centos7.x86_64.rpm

gulden-1.6.4.10-centos7.x86_64.rpm md5sum 4570c28b7885e40c74fe2378fe8700e1

installed in /opt/gulden/gulden/
and the boost libraries in  /opt/gulden/lib

need to set env variable
```
LD_LIBRARY_PATH=/opt/gulden/lib/boost/lib
QT_XKB_CONFIG_ROOT=/usr/lib/kbd/keymaps/xkb

prerequisites -
yum install http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
yum install miniupnpc qt5-qttools openssl qrencode libevent libprotobuf protobuf-lite libevent qt5-qtbase qt5-qtwebkit qt5-qtdeclarative qt5-qtsvg  bzip2 libxcb

```


## gulden-2.0.0.0.1-centos7-x86_64.bz2

gulden-2.0.0.0.1-centos7-x86_64.bz2 md5sum ba84f39684d2c2a9b6101c7cd2a34224

tarball of gulden-2.0.0.1 compiled for centos/rhel7

Instructions -

```
prerequisites -
yum install http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
yum install miniupnpc qt5-qttools openssl qrencode libevent libprotobuf protobuf-lite libevent qt5-qtbase qt5-qtwebkit qt5-qtdeclarative qt5-qtsvg  bzip2 libxcb

cd /opt 
tar xvfj gulden-2.0.0.0.1-centos7-x86_64.bz2

```

All the files are extracted into the directory gulden 
create a directory gulden/datadir; chown *user* gulden/datadir

```
export QT_XKB_CONFIG_ROOT=/usr/lib/kbd/keymaps/xkb
export LD_LIBRARY_PATH=/opt/gulden/boost/lib:/opt/gulden/qwt-6.1.3/lib/
```
the qt gui is /opt/gulden/bin/Gulden
there are also GuldenD, Gulden-cli and Gulden-tx



## guldenWrapper.sh

g-dash guldenstart.sh wrapper which attempts to restart if GuldenD crashes


## J Belshaw

If you need help with this I can be found on guldencom.slack.com, and if you appreciate this you can send NLG donations to:
GKKsMecU1QeQkFrNdziCSKcx6foCrK9q9K

