as yet unclassified
modify: aCollectionOfDates for: aRecurringSchedule
	recurringSchedule := aRecurringSchedule.
	self setWeekStart.
	^ self ordinalIsPossible
		ifTrue: [ self modifyConsideringOrdinalDayOfWeek: aCollectionOfDates ]
		ifFalse: [ super modify: aCollectionOfDates ]