instance creation
new
	| crontab |
	crontab := self new: 10.
	crontab daemon: (Daemon new crontab: crontab).
	^ crontab