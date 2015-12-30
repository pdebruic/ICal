alarms
alarmTimesFor: anICAlarm
	^ anICAlarm
		alarmTimesFor:
			(anICAlarm isRelatedToStart
				ifTrue: [ self start ]
				ifFalse: [ self end ])