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

# Modify default IP
#sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 定制主题
#git clone https://github.com/rosywrt/luci-theme-rosy.git ./package/lean/luci-theme-rosy
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  ./package/lean/luci-theme-argon2

git clone https://github.com/jerrykuku/luci-theme-argon.git ./package/luci-theme-argon
git clone https://github.com/mchome/openwrt-vlmcsd.git ./package/vlmcsd
#定制开机启动项
wget https://de.hhdxl.cf/config/99_network_passwd_port -O ./package/base-files/files/etc/uci-defaults/99_network_passwd_port
#git clone https://github.com/lisaac/luci-app-diskman.git  ./package/luci-app-diskman
# 修改为默认主题
sed -i 's/Bootstrap/argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/bootstrap/argon/g' feeds/luci/collections/luci/Makefile
#sed -i 's/CONFIG_PACKAGE_luci-theme-bootstrap=y/CONFIG_PACKAGE_luci-theme-argon2=y/g' .config

# 取消默认主题,自己看着办
#sed -i 's/CONFIG_PACKAGE_luci-theme-bootstrap=y/#CONFIG_PACKAGE_luci-theme-bootstrap is not set/g' .config
