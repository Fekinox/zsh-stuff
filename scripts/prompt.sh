#!/usr/bin/sh

source fekutils.sh

ST='%F{green}<'
EN='>%F{white}'
MI='>%F{white}--%F{green}<'

export PS1='%'$COLUMNS'>->-'$ST' %n'@'%M '$MI' %D | %T '$MI' %(5~|%-1~/../%3~|%4~) '$EN$(repchar $COLUMNS '-')'%<<
  > '
