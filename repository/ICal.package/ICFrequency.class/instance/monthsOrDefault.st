accessing
monthsOrDefault
	^ monthnumbers isEmpty
		ifTrue: [ self defaultMonths ]
		ifFalse: [ monthnumbers asArray ]