#!/bin/bash


new_chang="Advanced options for Debian GNU/Linux>Debian GNU/Linux, with Linux 4.14.129-bbrplus"
tmp_new="GRUB_DEFAULT= \"$new_chang\""
sed -i "/^GRUB_DEFAULT/c$tmp_new" /etc/default/grub
update-grub
sleep 1
read -p "需要重启VPS，是否现在重启 ? [Y/n] :" yn
[ -z "${yn}" ] && yn="y"
  if [[ $yn == [Yy] ]]; then
  echo -e "${Info} VPS 重启中..."
  reboot
  fi
