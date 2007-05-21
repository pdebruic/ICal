private
test: aNumber event: anICEvent after: aStartDT withDates: aDatesCollection andTime: aTime
	|events shouldDates|

	events := (anICEvent occurrences: aNumber after: aStartDT) asOrderedCollection.
	shouldDates := self makeEvents: aDatesCollection withTime: aTime from: anICEvent.

	self should: events size = shouldDates size.
	self should: (self events: events equal: shouldDates)