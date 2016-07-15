accessing
addAlarm: anAlarm
	self hasDueDate
		ifTrue: [ anAlarm setAlarmTimesFor: self ].
	^ self alarms add: anAlarm