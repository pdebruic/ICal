actions
setAlarm: aBlock at: aTime
"sets the alarm to go on at aTime"


| time |
time := nil.
time := aTime - DateAndTime now.
Transcript cr; show: 'time calculated '; cr.

alarm := nil.
alarm:= Alarm forSeconds: time asSeconds.
Transcript cr; show: 'alarm initiated for ', aTime printString; cr.
alarm alarmBlock: aBlock.
Transcript cr; show: 'block added : ', aBlock printString; cr.

[alarm register] fork.
Transcript cr; show: 'alarm registered for ', aTime printString; cr.