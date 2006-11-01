testing
testMonthlyEventsBetweenCount
	| rule sep aug augSepSet augSepCountSet |

	rule := ICRecurrenceRule monthly addWeekday: 'SA'; yourself.

	aug := self dateClass year: 2006 month: 8 day: 6.
	sep := self dateClass year: 2006 month: 9 day: 3.
	augSepSet := OrderedCollection new
		add: (self dateClass year: 2006 month: 08 day: 12);
		add: (self dateClass year: 2006 month: 08 day: 19);
		add: (self dateClass year: 2006 month: 08 day: 26);
		add: (self dateClass year: 2006 month: 09 day: 02);
		yourself.
		
	augSepCountSet := OrderedCollection new
		add: (self dateClass year: 2006 month: 08 day: 12);
		add: (self dateClass year: 2006 month: 08 day: 19);
		add: (self dateClass year: 2006 month: 08 day: 26);
		yourself.

	self assert: (rule events: 5 between: aug and: sep) = augSepSet.
	self assert: (rule events: 10 between: aug and: sep) = augSepSet.
	self assert: (rule events: 3 between: aug and: sep) = augSepCountSet.