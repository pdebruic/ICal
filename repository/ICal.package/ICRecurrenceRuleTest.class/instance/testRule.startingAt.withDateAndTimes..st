private
testRule: aRuleString startingAt: startDT withDateAndTimes: dateAndTimes
	| rule events shouldDates |

	rule := (ICRecurrenceRule fromICalString: aRuleString) dtstart: startDT;
		yourself.

	events := rule events asOrderedCollection.
	shouldDates := dateAndTimes asOrderedCollection.

	self assert: events size = shouldDates size.
	self assert: events = shouldDates