# BitCanna backups
Simple bash scripts to automate bootstrap's creation and full_chain_db's backups. 

Steps to set-up:
* Install 7zip: `sudo apt install 7zip`

* Schedule with Cron once a week: `crontab -e` and add a line like this:
```0 5 * * 0 /home/bitcanna/bckup_bitcanna/full_backup.sh```

* Change the folder path that fit with your system

* Edit `exclude.txt` and delete the line with `wallet.*` IF YOU WANT TO BACKUP WALLET (and backups)


