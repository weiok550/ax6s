#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP    192.168.6.1  root password  无线密码 1234567890
sed -i 's/10.10.10.1/192.168.6.1/g' package/base-files/files/bin/config_generate
sed -i 's/$1$WplwC1t5$HBAtVXABp7XbvVjG4193B.:18753:0:99999:7:::/$1$ttZeRDG3$V0pEG8rex5imt2uWJp3gO\/:18875:0:99999:7:::/g' package/base-files/files/etc/shadow
#Add Adguardhome bin file
#wget https://github.com/AdguardTeam/AdGuardHome/releases/download/v0.106.3/AdGuardHome_linux_arm64.tar.gz
#tar zxvf AdGuardHome_linux_arm64.tar.gz
#mkdir -p files/usr/bin
#cp -a ./AdGuardHome/AdGuardHome files/usr/bin/
# modify wifi ssid 
#sed -i 's/OpenWrt_2.4G/OpenWrt_5G/g'  package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i '185s/OpenWrt_5G/OpenWrt_2.4G/' package/kernel/mac80211/files/lib/wifi/mac80211.sh
