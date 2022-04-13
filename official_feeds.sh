#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo "src-git kenzok https://github.com/kenzok8/openwrt-packages" >> openwrt/feeds.conf.default
#echo "src-git liuran001_packages https://github.com/liuran001/openwrt-packages" >> openwrt/feeds.conf.default

# Add Luci Poweroff APP && istore
#git clone https://github.com/esirplayground/luci-app-poweroff.git openwrt/package/luci-app-poweroff

# Add Jerrykuku argon theme
#rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git openwrt/package/luci-theme-argon