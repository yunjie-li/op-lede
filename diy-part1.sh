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

# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default
./scripts/feeds update -a && rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/packages/net/{alist,adguardhome,mosdns,xray*,v2ray*,v2ray*,sing*,smartdns}
rm -rf feeds/packages/utils/v2dat
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang


git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git package/lean/luci-theme-ifit-ng

# git clone https://github.com/kenzok8/luci-theme-ifit.git package/lean/luci-theme-ifit

# git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
# git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr
