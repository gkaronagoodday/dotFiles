#!/bin/zsh

rsync -avuz --exclude-from 'Scripts/Backup/rysnc_ignore' rsync://192.168.1.140:873/rsync/Mrloafbot/ ~/
