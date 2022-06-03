#!/bin/sh
# Author: HSSH
# Description:
# Dibuat untuk memperbaiki filter adguard yang selalu hilang setelah reboot

printf "\n\nMemperbaiki AdGuardHome, mohon tunggu...\n"
service adguardhome stop >/dev/null 2>&1; sleep 2
mv /var/adguardhome/* /etc/AdGuardHome >/dev/null 2>&1
sed -i 's_/var/adguardhome_/etc/AdGuardHome_g' \
  /etc/config/adguardhome >/dev/null 2>&1
service adguardhome stop >/dev/null 2>&1; sleep 2
printf "Selesai!\n\n"
