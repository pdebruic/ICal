private
testRule: aRuleString startingAt: startDT take: aNumber withDates: aDatesArray
	| rule events shouldDates |

	rule := (ICRecurrenceRule fromICalString: aRuleString) dtstart: startDT;
		yourself.

	events := rule events.

	self assert: events class = LazyList.
	
	events := (events take: aNumber) asOrderedCollection.
	shouldDates := self makeDates: aDatesArray withTime: startDT asTime.
	
	self assert: events size = shouldDates size.
	self assert: events = shouldDates