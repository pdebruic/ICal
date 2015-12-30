accessing
addAlarm: anAlarm
	anAlarm setAlarmTimesFor: self.
	^ self alarms add: anAlarm