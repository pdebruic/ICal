testing
startOrAlarmOccursBetween: aStart and: anEnd
	^(self start between: aStart  and: anEnd )or: [ self alarms anySatisfy: [ :eachAlarm | eachAlarm occursBetween: aStart and: anEnd whenDateIs: self start ] ]