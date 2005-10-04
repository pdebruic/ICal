*ICal
hasTime
	^self hours isZero not
		or: [ self minutes isZero not ]
		or: [ self seconds isZero not ]