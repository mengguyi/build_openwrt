#!/bin/bash
# Modify default system settings

# 修改默认IP为192.168.10.1
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate 

# Hello World
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# luci-theme-infinityfreedom
#echo 'src-git infinityfreedom https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git' >>feeds.conf.default

# passwall
#echo "src-git PWpackages https://github.com/xiaorouji/openwrt-passwall.git;packages" >> feeds.conf.default
#echo "src-git PWluci https://github.com/xiaorouji/openwrt-passwall2.git" >> feeds.conf.default

# 替换默认主题
#rm -rf package/lean/luci-theme-argon 
git clone https://github.com/jerrykuku/luci-theme-argon.git  package/luci-theme-argon

# 添加 luci-app-argon-config

git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config

#echo 'src-git kiddin9 https://github.com/kiddin9/openwrt-packages.git' >> feeds.conf.default
