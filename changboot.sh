#!/bin/bash


new_chang="Advanced options for Debian GNU/Linux>Debian GNU/Linux, with Linux 4.14.182-bbrplus"
tmp_new="GRUB_DEFAULT := \"$new_chang\""
sed -i "/^GRUB_DEFAULT/c$tmp_new" /etc/default/grub
