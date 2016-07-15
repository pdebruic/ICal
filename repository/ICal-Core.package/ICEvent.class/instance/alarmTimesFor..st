alarms
alarmTimesFor: anICAlarm
	^ anICAlarm
		alarmTimesFor:
			(anICAlarm trigger isRelatedToStart
				ifTrue: [ self start ]
				ifFalse: [ self end ])