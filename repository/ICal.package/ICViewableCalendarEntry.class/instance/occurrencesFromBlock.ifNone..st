private
occurrencesFromBlock: aBlock ifNone: aNoneBlock
	|dates|

	self hasRecurrenceRules ifFalse: [ aNoneBlock value ].

	dates := self applyBlock: aBlock toRules: recurrenceRules.
	
	exclusionDates notEmpty ifTrue: [ dates := dates sortedDifference: (exclusionDates sortBy: [:a :b| a < b]) ].
	exclusionRules notEmpty
		ifTrue: [ dates := dates sortedDifference: (self applyBlock: [:rule| rule events] toRules: exclusionRules) ].

	^ dates