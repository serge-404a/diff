# ДОДЕЛАТЬ ПОСЛЕ ОБНОВЛЕНИЯ

# UPDATE
# every friday after work / or lessons

# MANUAL
# https://www.unix-lab.org/posts/gentoo-update/

# Update tree portage
emerge --sync

# Update DB eix
eix-update

# Checking output
emerge -pvuND --with-bdeps\=y world

# After CHECKING update
emerge -uND --with-bdeps\=y world

# After update run
eselect kernel list

# After update run
emerge -pv --depclean

# Check all in output emerge and FIX packets that do not need to be deleted. After run
emerge --depclean

# And remove all from
du -h -d 0 /var/cache/distfiles/
rm /var/cache/distfiles/*

# exclude
.layout.conf.distfiles.gentoo.org
.mirror-cache.json


# IMPORTANT: config file '/etc/default/grub' needs updating.
#  * See the CONFIGURATION FILES and CONFIGURATION FILES UPDATE TOOLS
#  * sections of the emerge man page to learn how to update config files.
#  * After world updates, it is important to remove obsolete packages with
#  * emerge --depclean. Refer to `man emerge` for more information.
#
#  потом обновить ядро
# ----------------------------
# ДОКУМЕНТАЦИЯ по моему образу
# ----------------------------
#
# Добавлен симлинк на обновление eix после обновления portage
ln -s /usr/bin/eix /etc/portage/postsync.d/eix-update

# ----------------------------
#
# keychron
#
# https://gist.github.com/andrebrait/961cefe730f4a2c41f57911e6195e444
sudo echo "options hid_apple fnmode=2" >> /etc/modprobe.d/hid_apple.conf
sudo update-initramfs -u
sudo reboot
# ----------------------------
#
# запуск вируталок (в систем ктл настроили автозапуск libvirtd)
# 1. запустить как демон
libvirtd -d
# 2. открыть virt-manager

# ----------------------------

