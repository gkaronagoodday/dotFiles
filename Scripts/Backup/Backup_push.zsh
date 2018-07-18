#!/bin/zsh

rsync -auz --progress --delete-after --exclude-from 'Scripts/Backup/rysnc_ignore' ~/ rsync://192.168.1.140:873/rsync/Mrloafbot/
