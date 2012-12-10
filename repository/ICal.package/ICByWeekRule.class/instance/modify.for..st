as yet unclassified
modify: aCollectionOfDates for: aRecurringSchedule
	^ aRecurringSchedule isYearly
		ifTrue: [ 
			recurringSchedule := aRecurringSchedule.
			weekStart := recurringSchedule weekStart.
			self modifyConsideringOrdinalDayOfWeek: aCollectionOfDates ]