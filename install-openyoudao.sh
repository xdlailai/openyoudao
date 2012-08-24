#!/bin/bash
#small script to install openyoudao
install -g users -o root -m 755 -d debian/openyoudao/usr/bin
install -g users -o root -m 755 -d debian/openyoudao/usr/lib/openyoudao
install -g users -o root -m 755 -d debian/openyoudao/var/cache/openyoudao
install -g users -o root -m 755 -d debian/openyoudao/usr/share/applications
install -g users -o root -v -m 755 -t debian/openyoudao/usr/bin      scripts/openyoudao
install -g users -o root -v -m 755 -t debian/openyoudao/usr/bin     install-openyoudao.sh
install -g users -o root -v -m 755 -t debian/openyoudao/usr/bin      uninstall-openyoudao.sh
install -g users -o root -v -m 644 -t debian/openyoudao/usr/lib/openyoudao ./*.py
install -g users -o root -v -m 644 -t debian/openyoudao/usr/share/applications  desktop/openyoudao.desktop
cp -rf cache/* debian/openyoudao/var/cache/openyoudao
chmod -R 755 debian/openyoudao/var/cache/openyoudao/*

#chmod 666 debian/openyoudao/var/cache/openyoudao/result.html
#chmod 666 debian/openyoudao/var/cache/openyoudao/origin.html
#chmod 777 debian/openyoudao/var/cache/openyoudao/history.cache
#cp -rf cache/* debian/openyoudao/var/cache/openyoudao;
install -g users -o root -v -m 666 -t debian/openyoudao/var/cache/openyoudao cache/result.html
install -g users -o root -v -m 666 -t debian/openyoudao/var/cache/openyoudao cache/origin.html
install -g users -o root -v -m 666 -t debian/openyoudao/var/cache/openyoudao cache/history.cache
