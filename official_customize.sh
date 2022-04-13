#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: Alan Wang
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.1.88/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. set default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' openwrt/feeds/luci/collections/luci/Makefile

#4. set fireware information
sed -i "s/OpenWrt /$(date +%Y.%m.%d) by ALANTARO /g" openwrt/package/lean/default-settings/files/zzz-default-settings
