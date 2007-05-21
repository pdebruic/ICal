private
test: aNumber event: anICEvent between: aStartDT and: anEndDT withDates: aDatesCollection andTime: aTime
	|events shouldDates|

	events := (anICEvent occurrences: aNumber between: aStartDT and: anEndDT) asOrderedCollection.
	shouldDates := self makeEvents: aDatesCollection withTime: aTime from: anICEvent.

	self should: events size = shouldDates size.
	self should: (self events: events equal: shouldDates)