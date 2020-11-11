LAST=$(bitcanna-cli getblockcount)
bitcanna-cli stop
echo .
echo Making new FULL BACKUP
rm /media/backup/full_backup*
7z a -xr@/home/bitcanna/backup_bitcanna/exclude.txt  /media/backup/full_backup_bcna_nowallets-$LAST.7z /home/bitcanna/.bitcanna/
echo .
echo End of backups... starting daemon again
bitcannad -daemon
