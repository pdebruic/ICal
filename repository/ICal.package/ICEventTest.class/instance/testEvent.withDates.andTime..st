private
testEvent: anICEvent withDates: aDatesCollection andTime: aTime
	|events shouldDates|

	events := anICEvent occurrences asOrderedCollection.
	shouldDates := self makeEvents: aDatesCollection withTime: aTime from: anICEvent.

	self should: events size = shouldDates size.
	self should: (self events: events equal: shouldDates)