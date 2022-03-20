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
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate
# 替换jerrykuku/luci-theme-argon
# 修改默认主题把argon换成你要的,三个都要改
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git ./package/lean/luci-theme-argon-18.06
#sed -i 's/Bootstrap/argon-18.06/g' feeds/luci/collections/luci/Makefile
#sed -i 's/bootstrap/argon-18.06/g' feeds/luci/collections/luci/Makefile
#sed -i 's/# CONFIG_PACKAGE_luci-theme-argon-18.06 is not set/CONFIG_PACKAGE_luci-theme-argon-18.06=y/g' .config
# 取消默认主题,自己看着办
#sed -i 's/CONFIG_PACKAGE_luci-theme-bootstrap=y/#CONFIG_PACKAGE_luci-theme-bootstrap is not set/g' .config
