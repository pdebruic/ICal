instance creation
newFor: aWatcher wake: aJob in: aTime
|wd|

wd:= self new.
wd time: aTime; job: aJob ; watcher: aWatcher.
wd run