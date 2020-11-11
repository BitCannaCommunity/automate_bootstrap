LAST=$(bitcanna-cli getblockcount)
bitcanna-cli stop
echo .
echo Making new bootstrap
rm /media/backup/bootstrap*
cd  /home/bitcanna/.bitcanna/blocks/
cat blk000*.dat > /media/backup/bootstrap.dat
touch /media/backup/bootstrap-block-$LAST
7z a -tzip /media/backup/bootstrap-$LAST.zip /media/backup/bootstrap.dat  /media/backup/bootstrap-block-$LAST
rm /media/backup/bootstrap.dat
rm /media/backup/bootstrap-block-$LAST
echo .
echo End of backups... starting daemon again
bitcannad -daemon
