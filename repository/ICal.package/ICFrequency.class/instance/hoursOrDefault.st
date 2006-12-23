accessing
hoursOrDefault
	^ hours isEmpty
		ifTrue: [ self defaultHours ]
		ifFalse: [ hours asArray ]