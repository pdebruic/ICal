alarms
alarmTimeFor: anICTrigger
	anICTrigger isRelatedToStart
		ifTrue: [ ^ self start + anICTrigger value ]
		ifFalse: [ ^ self end + anICTrigger value ]