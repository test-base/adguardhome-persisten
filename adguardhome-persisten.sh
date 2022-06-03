#!/bin/sh
# Author: HSSH
# Description:
# Dibuat untuk memperbaiki filter adguard yg selalu hilang setelah reboot

echo "Memperbaiki AdGuardHome, mohon tunggu..."
service adguardhome stop >/dev/null 2>&1 && sleep 2
mv /var/adguardhome/* /etc/AdGuardHome 1 >/dev/null 2>&1
sed -i 's_/var/adguardhome_/etc/AdGuardHome_g' \
  /etc/config/adguardhome >/dev/null 2>&1
service adguardhome stop >/dev/null 2>&1 && sleep 1
echo "Selesai!"
