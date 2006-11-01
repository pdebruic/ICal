instance creation
newDaemon: aDaemon
	| crontab |
	crontab := self new: 10.
	crontab daemon: aDaemon.
	^ crontab