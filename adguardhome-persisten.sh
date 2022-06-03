#!/bin/sh
# Author: Hosusoh
# Description:
# Dibuat untuk memperbaiki filter adguard yg selalu hilang setelah reboot

echo "Memperbaiki AdGuardHome, mohon tunggu..."
service adguardhome stop && sleep 2
mv /var/adguardhome/* /etc/AdGuardHome
sed -i 's_/var/adguardhome_/etc/AdGuardHome_g' /etc/config/adguardhome
service adguardhome stop && sleep 1
echo "Selesai!"
