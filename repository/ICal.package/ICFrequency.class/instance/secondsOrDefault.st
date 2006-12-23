accessing
secondsOrDefault
	^ seconds isEmpty
		ifTrue: [ self defaultSeconds ]
		ifFalse: [ seconds asArray ]