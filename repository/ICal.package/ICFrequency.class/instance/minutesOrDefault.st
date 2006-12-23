accessing
minutesOrDefault
	^ minutes isEmpty
		ifTrue: [ self defaultMinutes ]
		ifFalse: [ minutes asArray ]