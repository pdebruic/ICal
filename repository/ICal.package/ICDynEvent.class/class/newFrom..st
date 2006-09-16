as yet unclassified
newFrom: anEvent

| dyn |
dyn := self new.
dyn event: anEvent.
dyn setAlarm.

activeEvents add: dyn.

^dyn