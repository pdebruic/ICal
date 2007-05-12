private
printWeekdaysOn: aStream
	aStream nextPutAll: 'BYDAY='.
	self weekdays
		do: [ :each | aStream nextPutAll: each ]
		separatedBy: [ aStream nextPut: $, ].

	(self weekdays notEmpty and: [ self daysAndOccurrences notEmpty ])
		ifTrue: [ aStream nextPut: $, ].

	self daysAndOccurrences
		do: [ :each |
			aStream
				nextPutAll: each value asICalString; "occurrence"
				nextPutAll: each key asICalString "day" ]
		separatedBy: [ aStream nextPut: $, ]			