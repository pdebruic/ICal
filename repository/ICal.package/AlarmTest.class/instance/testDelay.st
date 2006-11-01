as yet unclassified
testDelay

| t |
t := Time now.
alarm := Alarm forSeconds: 60.
alarm alarmBlock: [Transcript cr; show: t ; cr ; show: Time now.].
alarm register.


alarm := Alarm forSeconds: 90.
alarm alarmBlock: [Transcript cr; show: '2nd alarm'; cr;  show: t ; cr ; show: Time now.].
alarm register.