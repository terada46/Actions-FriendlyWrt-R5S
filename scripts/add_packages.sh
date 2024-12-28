#!/bin/bash

# {{ Add luci-app-diskman
(cd friendlywrt && {
    mkdir -p package/luci-app-diskman
    wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/applications/luci-app-diskman/Makefile.old -O package/luci-app-diskman/Makefile
})
cat >> configs/rockchip/01-nanopi <<EOL
CONFIG_PACKAGE_autocore-arm=y
CONFIG_PACKAGE_automount=y
CONFIG_PACKAGE_base-files=y
CONFIG_PACKAGE_block-mount=y
CONFIG_PACKAGE_busybox=y
CONFIG_PACKAGE_ca-bundle=y
CONFIG_PACKAGE_ca-certificates=y
CONFIG_PACKAGE_coremark=y
CONFIG_PACKAGE_curl=y
CONFIG_PACKAGE_ddns-scripts_aliyun=y
CONFIG_PACKAGE_ddns-scripts_dnspod=y
CONFIG_PACKAGE_default-settings=y
CONFIG_PACKAGE_dnsmasq-full=y
CONFIG_PACKAGE_dropbear=y
CONFIG_PACKAGE_e2fsprogs=y
CONFIG_PACKAGE_ethtool=y
CONFIG_PACKAGE_firewall=y
CONFIG_PACKAGE_fstools=y
CONFIG_PACKAGE_haveged=y
CONFIG_PACKAGE_htop=y
CONFIG_PACKAGE_ip-full=y
CONFIG_PACKAGE_ip6tables=y
CONFIG_PACKAGE_ipset=y
CONFIG_PACKAGE_iptables=y
CONFIG_PACKAGE_iptables-mod-extra=y
CONFIG_PACKAGE_iptables-mod-tproxy=y
CONFIG_PACKAGE_libc=y
CONFIG_PACKAGE_libgcc=y
CONFIG_PACKAGE_libip6tc=y
CONFIG_PACKAGE_libustream-openssl=y
CONFIG_PACKAGE_logd=y
CONFIG_PACKAGE_luci=y
CONFIG_PACKAGE_luci-app-accesscontrol=y
CONFIG_PACKAGE_luci-app-arpbind=y
CONFIG_PACKAGE_luci-app-autoreboot=y
CONFIG_PACKAGE_luci-app-ddns=y
CONFIG_PACKAGE_luci-app-filetransfer=y
CONFIG_PACKAGE_luci-app-nlbwmon=y
CONFIG_PACKAGE_luci-app-turboacc=y
CONFIG_PACKAGE_luci-app-upnp=y
CONFIG_PACKAGE_luci-app-vlmcsd=y
CONFIG_PACKAGE_luci-app-vsftpd=y
CONFIG_PACKAGE_luci-app-wol=y
CONFIG_PACKAGE_luci-proto-ipv6=y
CONFIG_PACKAGE_mkf2fs=y
CONFIG_PACKAGE_mtd=y
CONFIG_PACKAGE_netifd=y
CONFIG_PACKAGE_odhcp6c=y
CONFIG_PACKAGE_odhcpd-ipv6only=y
CONFIG_PACKAGE_opkg=y
CONFIG_PACKAGE_partx-utils=y
CONFIG_PACKAGE_ppp=y
CONFIG_PACKAGE_ppp-mod-pppoe=y
CONFIG_PACKAGE_procd=y
CONFIG_PACKAGE_procd-ujail=y
CONFIG_PACKAGE_uboot-envtools=y
CONFIG_PACKAGE_uci=y
CONFIG_PACKAGE_uclient-fetch=y
CONFIG_PACKAGE_urandom-seed=y
CONFIG_PACKAGE_urngd=y
CONFIG_PACKAGE_usb-modeswitch=y
CONFIG_LUCI_LANG_zh_Hans=y
CONFIG_PACKAGE_luci-compat=y
CONFIG_PACKAGE_luci-lua-runtime=y
CONFIG_PACKAGE_luci-mod-admin-full=y
CONFIG_PACKAGE_luci-mod-network=y
CONFIG_PACKAGE_luci-mod-status=y
CONFIG_PACKAGE_luci-mod-system=y
CONFIG_PACKAGE_luci-app-accesscontrol=y
CONFIG_PACKAGE_luci-app-autoreboot=y
CONFIG_PACKAGE_luci-app-ddns=y
CONFIG_PACKAGE_luci-app-ddns-go=y
CONFIG_PACKAGE_luci-app-filetransfer=y
CONFIG_PACKAGE_luci-app-firewall=y
CONFIG_PACKAGE_luci-app-netdata=y
CONFIG_PACKAGE_luci-app-nlbwmon=y
CONFIG_PACKAGE_luci-app-opkg=y
CONFIG_PACKAGE_luci-app-passwall2=y
CONFIG_PACKAGE_luci-app-passwall2_Iptables_Transparent_Proxy=y
CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_IPv6_Nat=y
CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_SingBox=y
CONFIG_PACKAGE_luci-app-rclone_INCLUDE_rclone-webui=y
CONFIG_PACKAGE_luci-app-rclone_INCLUDE_rclone-ng=y
CONFIG_PACKAGE_luci-app-samba4=y
CONFIG_PACKAGE_luci-app-socat=y
CONFIG_PACKAGE_luci-app-ttyd=y
CONFIG_PACKAGE_luci-app-turboacc=y
CONFIG_PACKAGE_TURBOACC_INCLUDE_FLOW_OFFLOADING=y
CONFIG_PACKAGE_TURBOACC_INCLUDE_BBR_CCA=y
CONFIG_PACKAGE_TURBOACC_INCLUDE_BBR_CCA=y
CONFIG_PACKAGE_luci-app-vsftpd=y
CONFIG_PACKAGE_luci-app-wol=y
CONFIG_PACKAGE_luci-theme-argon=y
CONFIG_PACKAGE_luci-theme-material=y
CONFIG_PACKAGE_luci-theme-openwrt=y
CONFIG_PACKAGE_luci-theme-openwrt-2020=y
CONFIG_PACKAGE_luci-i18n-accesscontrol-zh-cn=y
CONFIG_PACKAGE_luci-i18n-arpbind-zh-cn=y
CONFIG_PACKAGE_luci-i18n-autoreboot-zh-cn=y
CONFIG_PACKAGE_luci-i18n-base-zh-cn=y
CONFIG_PACKAGE_luci-i18n-ddns-go-zh-cn=y
CONFIG_PACKAGE_luci-i18n-ddns-zh-cn=y
CONFIG_PACKAGE_luci-i18n-filetransfer-zh-cn=y
CONFIG_PACKAGE_luci-i18n-firewall-zh-cn=y
CONFIG_PACKAGE_luci-i18n-netdata-zh-cn=y
CONFIG_PACKAGE_luci-i18n-nlbwmon-zh-cn=y
CONFIG_PACKAGE_luci-i18n-opkg-zh-cn=y
CONFIG_PACKAGE_luci-i18n-passwall2-zh-cn=y
CONFIG_PACKAGE_luci-i18n-samba4-zh-cn=y
CONFIG_PACKAGE_luci-i18n-socat-zh-cn=y
CONFIG_PACKAGE_luci-i18n-ttyd-zh-cn=y
CONFIG_PACKAGE_luci-i18n-turboacc-zh-cn=y
CONFIG_PACKAGE_luci-i18n-upnp-zh-cn=y
CONFIG_PACKAGE_luci-i18n-vsftpd-zh-cn=y
CONFIG_PACKAGE_luci-i18n-wol-zh-cn=y
EOL
# }}

# {{ Add luci-theme-argon and luci-theme-material
(cd friendlywrt/package && {
    # 添加 luci-theme-argon
    [ -d luci-theme-argon ] && rm -rf luci-theme-argon
    git clone https://github.com/jerrykuku/luci-theme-argon.git --depth 1 -b master

    # 添加 luci-theme-material
    [ -d luci-theme-material ] && rm -rf luci-theme-material
    git clone https://github.com/openwrt/luci.git --depth 1 -b master
    mv luci/themes/luci-theme-material ./luci-theme-material
})

# 在配置文件中启用这两个主题
echo "CONFIG_PACKAGE_luci-theme-argon=y" >> configs/rockchip/01-nanopi
echo "CONFIG_PACKAGE_luci-theme-material=y" >> configs/rockchip/01-nanopi

# 替换 setup.sh 中的 init_theme 逻辑
sed -i -e 's/function init_theme/function old_init_theme/g' friendlywrt/target/linux/rockchip/armv8/base-files/root/setup.sh
cat > /tmp/appendtext.txt <<EOL
function init_theme() {
    # 如果安装了 luci-theme-argon，就设置为默认
    if uci get luci.themes.Argon >/dev/null 2>&1; then
        uci set luci.main.mediaurlbase="/luci-static/argon"
        uci commit luci
    # 如果安装了 luci-theme-material，就设置为默认
    elif uci get luci.themes.Material >/dev/null 2>&1; then
        uci set luci.main.mediaurlbase="/luci-static/material"
        uci commit luci
    fi
}
EOL
sed -i -e '/boardname=/r /tmp/appendtext.txt' friendlywrt/target/linux/rockchip/armv8/base-files/root/setup.sh
# }}
