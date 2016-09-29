#!/usr/bin/bash

#
# RUN THIS VIA CRON
#
# e.g.
# */3 * * * * ~/dotfiles/offlineimap/notify.sh
# 

# run OfflineIMAP once, with quiet interface
offlineimap -o -q -u quiet

# count new mail for every maildir
maildirnew="$HOME/Mail/*/*/new/"
new="$(find $maildirnew -type f | wc -l)"

# count old mail for every maildir
maildirold="$HOME/Mail/*/*/cur/"
old="$(find $maildirold -type f | wc -l)"

userId=`id -u`
export DISPLAY=:0; export XAUTHORITY=/run/user/$userId/gdm/Xauthority;

DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$userId/bus"
export DBUS_SESSION_BUS_ADDRESS

date >> ~/.offlineimap.log

if [ $new -gt 0 ]; then
  # this script is run via cron, so it normally has no access to the X server
  msg="$new neue E-Mails!\nUnd $old alte…"
  if [ $new -eq 1 ]; then
    msg="Eine neue E-Mail!\nUnd $old alte…"
  fi
  notify-send "OfflineIMAP" "$msg" --icon=notification-message-email
fi
