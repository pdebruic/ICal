as yet unclassified
testOneMinuteEarlyAlarm
	| todo alarm |
	todo := ICTodo new.
	todo due: self timeClass epoch.
	alarm := ICAlarm new.
	alarm
		trigger:
			(ICTrigger new
				value: (self durationClass minutes: -1);
				beRelatedToStart;
				yourself).
	todo addAlarm: alarm.
	self assert: (todo hasAlarmAt: self timeClass epoch - (self durationClass minutes: 1)).
	self assert: (todo hasAlarmAt: self timeClass epoch + (self durationClass minutes: 1)) not