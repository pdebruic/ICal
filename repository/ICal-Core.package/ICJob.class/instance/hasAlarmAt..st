alarms
hasAlarmAt: aStafferDateAndTime
	^ self hasAlarms and: [ self alarms anySatisfy: [ :ea | ea dueAt: aStafferDateAndTime  ] ]