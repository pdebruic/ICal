private
toValidDate: aDateAndTime

	^ self hasRepetition
		ifTrue: [ frequency dtstart ]
		ifFalse: [ frequency toValidDate: aDateAndTime ]