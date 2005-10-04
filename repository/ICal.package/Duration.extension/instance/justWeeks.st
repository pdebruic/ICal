*ICal
justWeeks
	^self weeks isZero not
		and: [ self daysWithoutWeeks isZero ]
		and: [ self hours isZero ]
		and: [ self minutes isZero ]
		and: [ self seconds isZero ]