#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-op1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 查看所有标签
#git tag
# 切换到标签 v23.05.6
git checkout v23.05.6

# 回退源码
#git reset --hard f372b71 #等同于切换到标签 v22.03.6

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# 注释默认 packages
#sed -i 's/^\(.*packages\)/#&/' feeds.conf.default
# 添加 packages
#sed -i '$a src-git packages https://github.com/Lienol/openwrt-packages.git;23.05' feeds.conf.default
#sed -i '$a src-git packages https://github.com/openwrt/packages.git^b5ed85f6e94aa08de1433272dc007550f4a28201' feeds.conf.default

# 注释默认 luci
#sed -i 's/^\(.*luci\)/#&/' feeds.conf.default
# 添加 luci
#sed -i '$a src-git luci https://github.com/Lienol/openwrt-luci.git;23.05' feeds.conf.default
#sed -i '$a src-git luci https://github.com/openwrt/luci.git^63ba3cba5b7bfb803a875d4d8f01248634687fd5' feeds.conf.default

# 注释默认 routing
#sed -i 's/^\(.*routing\)/#&/' feeds.conf.default
# 添加 routing
#sed -i '$a src-git routing https://github.com/Lienol/openwrt-routing.git;23.05' feeds.conf.default
#sed -i '$a src-git routing https://github.com/openwrt/routing.git^e351d1e623e9ef2ab78f28cb1ce8d271d28c902d' feeds.conf.default

# 注释默认 telephony
#sed -i 's/^\(.*telephony\)/#&/' feeds.conf.default
# 添加 telephony
#sed -i '$a src-git telephony https://github.com/Lienol/openwrt-telephony.git;23.05' feeds.conf.default
#sed -i '$a src-git telephony https://github.com/openwrt/telephony.git^98c8a5aa4624312ed758e2e2b6d4039050a1649d' feeds.conf.default

# 添加 lienol 大的 package
echo 'src-git lienol1 https://github.com/Lienol/openwrt-package.git;main' >>feeds.conf.default
echo 'src-git lienol2 https://github.com/Lienol/openwrt-package.git;other' >>feeds.conf.default

# 添加 luci-app-msd_lite
#echo 'src-git msd_lite https://github.com/iii80/luci-app-msd.git' >>feeds.conf.default
