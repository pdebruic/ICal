private
testRule: aRuleString startingAt: startDT withDates: aDatesArray
	| rule events shouldDates |

	rule := (ICRecurrenceRule fromICalString: aRuleString) dtstart: startDT;
		yourself.

	events := rule events asOrderedCollection.
	shouldDates := self makeDates: aDatesArray withTime: startDT asTime.

	self assert: events size = shouldDates size.
	self assert: events = shouldDates