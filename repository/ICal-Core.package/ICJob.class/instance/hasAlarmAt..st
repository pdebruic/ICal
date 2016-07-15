alarms
hasAlarmAt: aDateAndTime
	^ self hasAlarms and: [ self alarms anySatisfy: [ :ea | ea dueAt: aDateAndTime for: self ] ]