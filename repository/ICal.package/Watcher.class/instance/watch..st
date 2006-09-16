actions
watch: aJob
|aTime|
aTime:=aJob start - DateAndTime now.

aTime isNegative ifTrue:[self halt. ^nil].

jobs add: aJob.
^WatcherDelay newFor: self wake: aJob in: aTime 